(function() {
  $(document).on('pjax:start', function() { NProgress.start(); });
  $(document).on('pjax:end',   function() { NProgress.done(); duoshuo(); });

  $(document).pjax('a[href^="/"]', '#content', { fragment: '#content' });


  function duoshuo() {
    duoshuoPjax('.ds-thread', 'EmbedThread');
    duoshuoPjax('.ds-share', 'ShareWidget');
    duoshuoPjax('.ds-thread-count', 'ThreadCount');
  }

  function duoshuoPjax(className, type) {
    if (typeof DUOSHUO === 'undefined') return;
    DUOSHUO.initSelector(className, { type: type });
  }
})();

/**

// duoshuo type matrix

".ds-thread": {
    type: "EmbedThread"
},
".ds-recent-comments": {
    type: "RecentComments"
},
".ds-recent-visitors": {
    type: "RecentVisitors"
},
".ds-top-users": {
    type: "TopUsers"
},
".ds-top-threads": {
    type: "TopThreads"
},
".ds-login": {
    type: "LoginWidget"
},
".ds-thread-count": {
    type: "ThreadCount"
},
".ds-share": {
    type: "ShareWidget"
}

**/
