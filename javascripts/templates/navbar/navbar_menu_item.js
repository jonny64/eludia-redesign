!function(){this.JST||(this.JST={}),this.JST["templates/navbar/navbar_menu_item"]=function(e){e||(e={});var n,t=[],a=function(e){return e&&e.ecoSafe?e:"undefined"!=typeof e&&null!=e?i(e):""},s=e.safe,i=e.escape;return n=e.safe=function(e){if(e&&e.ecoSafe)return e;("undefined"==typeof e||null==e)&&(e="");var n=new String(e);return n.ecoSafe=!0,n},i||(i=e.escape=function(e){return(""+e).replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/"/g,"&quot;")}),function(){!function(){t.push('<a href="'),t.push(a(this.href)),t.push('">'),t.push(a(this.label)),t.push("</a>\n")}.call(this)}.call(e),e.safe=s,e.escape=i,t.join("")}}.call(this);