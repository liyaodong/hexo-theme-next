(function() {
  $(document).on('pjax:start', function() { NProgress.start(); });
  $(document).on('pjax:end',   function() { NProgress.done(); duoshuo(); });

  $(document).pjax('a[href^="/"]', '#content', { fragment: '#content' });

  function duoshuo(){
    var dus=$(".ds-thread");
    if($(dus).length !== 1) return;

    var el = document.createElement('div');
    el.setAttribute('data-thread-key',$(dus).attr("data-thread-key"));//必选参数
    el.setAttribute('data-url',$(dus).attr("data-url"));
    DUOSHUO.EmbedThread(el);
    $(dus).html(el);
  }
})();
