<script type="text/javascript" async>
	{literal}
	;(function(o,l,a,r,k,y){if(o.olark)return;        
	r="script";y=l.createElement(r);r=l.getElementsByTagName(r)[0];        
	y.async=1;y.src="//"+a;r.parentNode.insertBefore(y,r);        
	y=o.olark=function(){k.s.push(arguments);k.t.push(+new Date)};        
	y.extend=function(i,j){y("extend",i,j)};        
	y.identify=function(i){y("identify",k.i=i)};        
	y.configure=function(i,j){y("configure",i,j);k.c[i]=j};        
	k=y._={s:[],t:[+new Date],c:{},l:a};        
	})(window,document,"static.olark.com/jsclient/loader.js");
	{/literal}
	olark.identify('{$siteId|escape:'htmlall':'UTF-8'}');
	olark.configure('locale.welcome_title', "{$welcomingTitle|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.chatting_title', "{$chattingTitle|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.unavailable_title', "{$unavailableTitle|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.busy_title', "{$busyTitle|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.away_message', "{$awayMessage|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.loading_title', "{$loadingTitle|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.welcome_message', "{$welcomeMessage|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.busy_message', "{$busyMessage|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.chat_input_text', "{$chatInputText|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.name_input_text', "{$nameInputText|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.email_input_text', "{$emailInputText|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.offline_note_message', "{$offlineNoteMessage|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.send_button_text', "{$sendButtonText|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.offline_note_sending_text', "{$offlineNoteSendingText|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.operator_is_typing_text', "{$operatorIsTypingText|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.operator_has_stopped_typing_text', "{$operatorStopTypingText|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.introduction_error_text', "{$introductionErrorText|escape:'htmlall':'UTF-8'}");
	olark.configure('locale.introduction_submit_button_text', "{$introductionSubmitButtonText|escape:'htmlall':'UTF-8'}");
	{if isset($email)}
		var name = "{$firstName|escape:'htmlall':'UTF-8'} {$lastName|escape:'htmlall':'UTF-8'}";
		var email= "{$email|escape:'htmlall':'UTF-8'}";
		{literal}
		olark('api.visitor.updateFullName', {fullName: name});
		olark('api.visitor.updateEmailAddress', {emailAddress: email});
		{/literal}
	{/if}
</script>