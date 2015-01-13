<?php
/**
* Olark Module
*
* @author    Olark <support@olark.com>
* @copyright Olark 2014
* @license
* @version   Release: $Revision: 1.2 $
*/

if (!defined('_PS_VERSION_'))
	exit;

class Olark extends Module
{
	private $configuration_keys;

	public function __construct()
	{
		$this->name = 'olark';
		$this->tab = 'front_office_features';
		$this->version = '1.1.2';
		$this->author = 'Olark';
		$this->module_key = 'c2e5478bdc888252ba4beeb37c700a9d';
		parent::__construct();

		$this->displayName = $this->l('Olark');
		$this->description = $this->l('Chat with Customers directly through your IM client: GTalk, iChat...');

		$this->confirmUninstall = $this->l('Are you sure you want to delete your details?');

		/* Backward compatibility */
		if (_PS_VERSION_ < 1.5)
			require(_PS_MODULE_DIR_.'olark/backward_compatibility/backward.php');
	}

	/* Init the private variable configurationKey with the list of all the smarty, post variables needed */
	private function iniConfigurationKeys()
	{
		$this->configuration_keys = array(
			array('smarty' => 'siteId', 'key' => 'OLARK_SITE_ID','post' => 'olarkSiteId'),
			array('smarty' => 'welcomingTitle', 'key' => 'OLARK_WELCOME_TITLE', 'post' => 'olarkWelcomingTitle'),
			array('smarty' => 'chattingTitle','key' => 'OLARK_CHATTING_TITLE', 'post' => 'olarkChattingTitle'),
			array('smarty' => 'unavailableTitle', 'key' => 'OLARK_UNAVAILABLE_TITLE', 'post' => 'olarkUnavailableTitle'),
			array('smarty' => 'busyTitle', 'key' => 'OLARK_BUSY_TITLE', 'post' => 'olarkBusyTitle'),
			array('smarty' => 'awayMessage', 'key' => 'OLARK_AWAY_MESSAGE', 'post' => 'olarkAwayMessage'),
			array('smarty' => 'loadingTitle', 'key' => 'OLARK_LOADING_TITLE', 'post' => 'olarkLoadingTitle'),
			array('smarty' => 'welcomeMessage', 'key' => 'OLARK_WELCOME_MESSAGE', 'post' => 'olarkWelcomeMessage'),
			array('smarty' => 'busyMessage', 'key' => 'OLARK_BUSY_MESSAGE', 'post' => 'olarkBusyMessage'),
			array('smarty' => 'chatInputText', 'key' => 'OLARK_CHAT_INPUT_TEXT', 'post' => 'olarkChatInputText'),
			array('smarty' => 'nameInputText', 'key' => 'OLARK_NAME_INPUT_TEXT', 'post' => 'olarkNameInputText'),
			array('smarty' => 'emailInputText', 'key' => 'OLARK_EMAIL_INPUT_TEXT', 'post' => 'olarkEmailInputText'),
			array('smarty' => 'offlineNoteMessage', 'key' => 'OLARK_OFFLINE_NOTE_MESSAGE', 'post' => 'olarkOfflineNoteMessage'),
			array('smarty' => 'sendButtonText', 'key' => 'OLARK_SEND_BUTTON_TEXT', 'post' => 'olarkSendButtonText'),
			array('smarty' => 'offlineNoteSendingText', 'key' => 'OLARK_OFFLINE_NOTE_SENDING_TEXT', 'post' => 'olarkOfflineNoteSendingText'),
			array('smarty' => 'operatorIsTypingText', 'key' => 'OLARK_IS_TYPING_TEXT', 'post' => 'olarkOperatorIsTypingText'),
			array('smarty' => 'operatorStopTypingText', 'key' => 'OLARK_STOP_TYPING_TEXT', 'post' => 'olarkOperatorHasStoppedTypingText'),
			array('smarty' => 'introductionErrorText', 'key' => 'OLARK_INTRODUCTION_ERROR_TEXT', 'post' => 'olarkIntroductionErrorText'),
			array('smarty' => 'introductionSubmitButtonText', 'key' => 'OLARK_SUBMIT_BUTTON_TEXT', 'post' => 'olarkIntroductionSubmitButtonText'),
		);
	}

	public function install()
	{
		return parent::install() && $this->registerHook('footer');
	}

	public function uninstall()
	{
		$this->iniConfigurationKeys();

		/* Delete all configuration keys and uninstall the module */
		foreach ($this->configuration_keys as $keys)
			Configuration::deleteByName($keys['key']);

		return parent::uninstall();
	}

	public function getContent()
	{
		$html = '';
			if (version_compare(_PS_VERSION_, '1.5', '>'))
				$this->context->controller->addJQueryPlugin('fancybox');
			else
				$html .= '<script type="text/javascript" src="'.__PS_BASE_URI__.'js/jquery/jquery.fancybox-1.3.4.js"></script>
			  	<link type="text/css" rel="stylesheet" href="'.__PS_BASE_URI__.'css/jquery.fancybox-1.3.4.css" />';
		$this->iniConfigurationKeys();
		if (Tools::isSubmit('submitOlark'))
		{
			foreach ($this->configuration_keys as $keys)
				Configuration::updateValue($keys['key'], pSQL(Tools::getValue($keys['post'])));
			$html .= $this->displayConfirmation($this->l('Settings updated'));
		}

		$smarty_variables = array();
		foreach ($this->configuration_keys as $keys)
			$smarty_variables[$keys['smarty']] = Configuration::get($keys['key']);
		$this->context->smarty->assign($smarty_variables);

		$this->context->smarty->assign(array(
				'logo' => '../modules/olark/img/olark_logo.png',
				'form' => './index.php?tab=AdminModules&configure=olark&token='
					.Tools::getAdminTokenLite('AdminModules').'&tab_module='.$this->tab.'&module_name=olark',
				'tracking' => 'http://www.prestashop.com/modules/olark.png?url_site='
					.Tools::safeOutput($_SERVER['SERVER_NAME']).'&amp;id_lang='.(int)$this->context->cookie->id_lang,
			));

		return $html.$this->display(__FILE__, 'views/templates/front/configuration.tpl');
	}

	/* The chat box will be integrated in Javascript and displayed in the footer */
	public function hookFooter($params)
	{
		if (!$this->active || !Configuration::get('OLARK_SITE_ID'))
			return false;

		/* Add customer's information in the chat box */
		if ($params['cookie']->id_customer)
		{
			$customer = new Customer((int)$params['cookie']->id_customer);
			if (Validate::isLoadedObject($customer))
				$this->context->smarty->assign(array('email' => $customer->email, 'firstName' => $customer->firstname, 'lastName' => $customer->lastname));
		}

		$smarty_variables = array();
		$this->iniConfigurationKeys();
		foreach ($this->configuration_keys as $keys)
			$smarty_variables[$keys['smarty']] = Configuration::get($keys['key']);
		$this->context->smarty->assign($smarty_variables);

		return $this->display(__FILE__, 'views/templates/hook/footer.tpl');
	}
}