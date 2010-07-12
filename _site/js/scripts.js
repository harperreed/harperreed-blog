jQuery.noConflict();
jQuery(document).ready(function(){
    //CHAT LINK IFRAME
    //stole from cloudkick. what an awesome idea.
    
    jQuery('#chat-link').bind('click',function(){
    jQuery('<div id="chat-frame-wrapper"><a class="close" title="close"></a><iframe id="chat-frame"></iframe></div>').appendTo('#chat-wrapper-main');
    jQuery('#chat-frame').attr('src',jQuery(this).attr('href'));
    jQuery('#chat-wrapper-main').toggle(); //("blind", { direction: "horizontal" }, 1000);

    jQuery('#chat-frame-wrapper .close').bind('click',function(){
    jQuery('#chat-frame-wrapper').remove();
    jQuery('#chat-wrapper-main').toggle();
    });
    return false;
    });
     });

function twitterCallback2(obj) {
var twitters = obj;
var statusHTML = "";
var username = "";
var today = new Date();
for (var i=0; i<twitters.length; i++){
username = twitters[i].user.screen_name
statusHTML += ('<li><span>'+twitters[i].text+'</span> <a style="font-size:85%" href="http://twitter.com/'+username+'/statuses/'+twitters[i].id+'">'+relative_time(twitters[i].created_at)+'</a></li>')
                                            }
         document.getElementById('twitter_update_list').innerHTML = statusHTML;
}  

function relative_time(C){var B=C.split(" ");C=B[1]+" "+B[2]+", "+B[5]+" "+B[3];var A=Date.parse(C);var D=(arguments.length>1)?arguments[1]:new Date();var E=parseInt((D.getTime()-A)/1000);E=E+(D.getTimezoneOffset()*60);if(E<60){return"less than a minute ago"}else{if(E<120){return"about a minute ago"}else{if(E<(60*60)){return(parseInt(E/60)).toString()+" minutes ago"}else{if(E<(120*60)){return"about an hour ago"}else{if(E<(24*60*60)){return"about "+(parseInt(E/3600)).toString()+" hours ago"}else{if(E<(48*60*60)){return"1 day ago"}else{return(parseInt(E/86400)).toString()+" days ago"}}}}}}};
