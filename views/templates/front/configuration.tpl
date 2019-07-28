{*
*  @author  Olark <support@olark.com>
*  @copyright  Olark 2014
*  @version  Release: $Revision: 1.2 $
*}
<link href="{$module_dir|escape:'htmlall'}css/olark.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	/* Fancybox */
	{literal}
	$('a.olark-video-btn').live('click', function(){
	    $.fancybox({
	        'type' : 'iframe',
	        'href' : 'https://fast.wistia.com/embed/iframe/79c2daad08?',
	        'swf': {'allowfullscreen':'true', 'wmode':'transparent'},
	        'overlayShow' : true,
	        'centerOnScroll' : true,
	        'speedIn' : 100,
	        'speedOut' : 50,
	        'width' : 768,
	        'height' : 480
	    });
	    return false;
	});
	{/literal}
</script>
<img src="{$tracking|escape:'htmlall':'UTF-8'}" alt="tracking" style="display: none" />
<div class="olark-wrap">
	<p class="olark-intro"><a href="https://www.olark.com/" class="olark-logo" target="_blank"><img src="{$module_dir|escape:'htmlall'}img/olark_logo.png" alt="Olark" border="0" /></a><span>{l s='Chat with your Customers' mod='olark'}</span><br />
	{l s='Create trust, loyalty &amp; happiness' mod='olark'}<br />
	<a href="https://www.olark.com/" class="olark-link" target="_blank">{l s='Get Started Now' mod='olark'}</a></p>
	<div class="olark-content">
		<h3>{l s='Get to know your shoppers, create relationships with customers and increase sales.' mod='olark'}</h3>
		<div class="olark-video">
			<a href="https://fast.wistia.com/embed/iframe/79c2daad08?" class="olark-video-btn"><img src="{$module_dir|escape:'htmlall'}img/olark-video-screen.png" alt="Olark Video" /><img src="{$module_dir|escape:'htmlall'}img/btn-video.png" alt="" class="video-icon" /></a>
			<p>{l s='Watch how Olark works...' mod='olark'}</p>
		</div>
		<ul>
			<li><img src="{$module_dir|escape:'htmlall'}img/olark-chat.png" alt="" /> {l s='Chat using your IM client' mod='olark'}</li>
			<li class="alt"><img src="{$module_dir|escape:'htmlall'}img/olark-heart.png" alt="" /> {l s='Satisfying User Experience' mod='olark'}</li>
			<li><img src="{$module_dir|escape:'htmlall'}img/olark-team.png" alt="" /> {l s='Work together as a team' mod='olark'}</li>
			<li class="alt"><img src="{$module_dir|escape:'htmlall'}img/olark-stats.png" alt="" /> {l s='Detailed Reporting &amp; Stats' mod='olark'}</li>
			<li><img src="{$module_dir|escape:'htmlall'}img/olark-crm.png" alt="" /> {l s='CRM &amp; Helpdesk Integration' mod='olark'}</li>
			<li class="alt"><img src="{$module_dir|escape:'htmlall'}img/olark-code.png" alt="" /> {l s='Powerful API' mod='olark'}</li>
		</ul>
		<p>{l s='Talk to your customers today!' mod='olark'} <a href="https://www.olark.com/" class="olark-link" target="_blank">{l s='Create an Account' mod='olark'}</a></p>
	</div>

	<form action="{$form|escape:'htmlall':'UTF-8'}" method="post">
		<fieldset>
			<legend><img src="{$module_dir|escape:'htmlall'}img/icon-config.gif" alt="" />{l s='Configuration' mod='olark'}</legend>
			<p>{l s='Use the Site-ID provided to you by Olark to configure the module' mod='olark'}</p><br/>
			<label for="olarkSiteId">{l s='Site Id' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkSiteId" id="olarkSiteId" value="{$siteId|escape:'htmlall':'UTF-8'}" /> <sup>*</sup>
			</div>
			<div class="margin-form">
				<input type="submit" class="button" name="submitOlark" value="{l s='Save' mod='olark'}" />
			</div>
		</fieldset><br />
		<br />
		<fieldset>
			<legend><img src="{$module_dir|escape:'htmlall'}img/icon-config.gif" alt="" />{l s='Additional Configuration (optional)' mod='olark'}</legend>
			<p>{l s='Feel free to customize the default text below' mod='olark'}</p><br/>
			<label for="olarkWelcomingTitle">{l s='Welcoming Title' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkWelcomingTitle" id="olarkWelcomingTitle" value="{$welcomingTitle|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "Click to Chat"' mod='olark'}
			</div>
			<label for="olarkChattingTitle">{l s='Chatting Title' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkChattingTitle" id="olarkChattingTitle" value="{$chattingTitle|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "Live Help: Now Chatting"' mod='olark'}
			</div>
			<label for="olarkUnavailableTitle">{l s='Unavailable Title' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkUnavailableTitle" id="olarkUnavailableTitle" value="{$unavailableTitle|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "Live Help: Offline"' mod='olark'}
			</div>
			<label for="olarkBusyTitle">{l s='Busy Title' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkBusyTitle" id="olarkBusyTitle" value="{$busyTitle|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "Live Help: Busy"' mod='olark'}
			</div>
			<label for="olarkAwayMessage">{l s='Away Message' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkAwayMessage" id="olarkAwayMessage" value="{$awayMessage|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "Our live support feature is currently offline, please try again later."' mod='olark'}
			</div>
			<label for="olarkBusyTitle">{l s='Loading Title' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkLoadingTitle" id="olarkLoadingTitle" value="{$loadingTitle|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "Loading Olark..."' mod='olark'}
			</div>
			<label for="olarkWelcomeMessage">{l s='Welcome Message' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkWelcomeMessage" id="olarkWelcomeMessage" value="{$welcomeMessage|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "Welcome to my website.  You can use this chat window to chat with me."' mod='olark'}
			</div>
			<label for="olarkBusyMessage">{l s='Busy Message' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkBusyMessage" id="olarkBusyMessage" value="{$busyMessage|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "All of our representatives are with other customers at this time. We will be with you shortly."' mod='olark'}
			</div>
			<label for="olarkChatInputText">{l s='Chat Input Text' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkChatInputText" id="olarkChatInputText" value="{$chatInputText|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "Type here and hit to chat"' mod='olark'}
			</div>
			<label for="olarkNameInputText">{l s='Name Input Text' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkNameInputText" id="olarkNameInputText" value="{$nameInputText|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: " and type your name"' mod='olark'}
			</div>
			<label for="olarkEmailInputText">{l s='Email Input Text' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkEmailInputText" id="olarkEmailInputText" value="{$emailInputText|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: " and type your email"' mod='olark'}
			</div>
			<label for="olarkOfflineNoteMessage">{l s='Offline Note Message' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkOfflineNoteMessage" id="olarkOfflineNoteMessage" value="{$offlineNoteMessage|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "We are offline, send us a message"' mod='olark'}
			</div>
			<label for="olarkSendButtonText">{l s='Send Button Text' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkSendButtonText" id="olarkSendButtonText" value="{$sendButtonText|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "Send"' mod='olark'}
			</div>
			<label for="olarkOfflineNoteSendingText">{l s='Offline Note Sending Text' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkOfflineNoteSendingText" id="olarkOfflineNoteSendingText" value="{$offlineNoteSendingText|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "Sending..."' mod='olark'}
			</div>
			<label for="olarkOperatorIsTypingText">{l s='Is Typing Text' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkOperatorIsTypingText" id="olarkOperatorIsTypingText" value="{$operatorIsTypingText|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "is typing..."' mod='olark'}
			</div>
			<label for="olarkOperatorHasStoppedTypingText">{l s='Has Stopped Typing Text' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkOperatorHasStoppedTypingText" id="olarkOperatorHasStoppedTypingText" value="{$operatorStopTypingText|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "has stopped typing"' mod='olark'}
			</div>
			<label for="olarkIntroductionErrorText">{l s='Introduction Error Text' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkIntroductionErrorText" id="olarkIntroductionErrorText" value="{$introductionErrorText|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "Please provide your name and email address so we can contact you in case we get disconnected"' mod='olark'}
			</div>
			<label for="olarkIntroductionSubmitButtonText">{l s='Introduction Submit Button Text' mod='olark'}</label>
			<div class="margin-form">
				<input type="text" name="olarkIntroductionSubmitButtonText" id="olarkIntroductionSubmitButtonText" value="{$introductionSubmitButtonText|escape:'htmlall':'UTF-8'}" />&nbsp;&nbsp;{l s='Example: "Start chat"' mod='olark'}
			</div>
			<div class="margin-form">
				<input type="submit" class="button" name="submitOlark" value="{l s='Save' mod='olark'}" />
			</div>
		</fieldset>
	</form>
	<div class="clear"></div>
</div>