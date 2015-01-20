{*
*  @author  Olark <support@olark.com>
*  @copyright  Olark 2014
*  @version  Release: $Revision: 1.2 $
*}
<!-- Begin Olark -->
<script data-cfasync="false" type='text/javascript'>/*{literal}<![CDATA[*/window.olark||(function(c){var f=window,d=document,l=f.location.protocol=="https:"?"https:":"http:",z=c.name,r="load";var nt=function(){
f[z]=function(){
(a.s=a.s||[]).push(arguments)};var a=f[z]._={
},q=c.methods.length;while(q--){(function(n){f[z][n]=function(){
f[z]("call",n,arguments)}})(c.methods[q])}a.l=c.loader;a.i=nt;a.p={
0:+new Date};a.P=function(u){
a.p[u]=new Date-a.p[0]};function s(){
a.P(r);f[z](r)}f.addEventListener?f.addEventListener(r,s,false):f.attachEvent("on"+r,s);var ld=function(){function p(hd){
hd="head";return["<",hd,"></",hd,"><",i,' onl' + 'oad="var d=',g,";d.getElementsByTagName('head')[0].",j,"(d.",h,"('script')).",k,"='",l,"//",a.l,"'",'"',"></",i,">"].join("")}var i="body",m=d[i];if(!m){
return setTimeout(ld,100)}a.P(1);var j="appendChild",h="createElement",k="src",n=d[h]("div"),v=n[j](d[h](z)),b=d[h]("iframe"),g="document",e="domain",o;n.style.display="none";m.insertBefore(n,m.firstChild).id=z;b.frameBorder="0";b.id=z+"-loader";if(/MSIE[ ]+6/.test(navigator.userAgent)){
b.src="javascript:false"}b.allowTransparency="true";v[j](b);try{
b.contentWindow[g].open()}catch(w){
c[e]=d[e];o="javascript:var d="+g+".open();d.domain='"+d.domain+"';";b[k]=o+"void(0);"}try{
var t=b.contentWindow[g];t.write(p());t.close()}catch(x){
b[k]=o+'d.write("'+p().replace(/"/g,String.fromCharCode(92)+'"')+'");d.close();'}a.P(2)};ld()};nt()})({
loader: "static.olark.com/jsclient/loader0.js",name:"olark",methods:["configure","extend","declare","identify"]});

/* Custom configuration */
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
{literal}
/*]]>{/literal}*/</script><noscript><a href="https://www.olark.com/site/{$siteId|escape:'htmllall'}/contact" title="Contact us" target="_blank">Questions? Feedback?</a> powered by <a href="http://www.olark.com?welcome" title="Olark live chat software">Olark live chat software</a></noscript>
<!-- End Olark -->
