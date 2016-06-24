#disqus_config = ->
#  @page.url = '<%= url_for([@post, {only_path: false}]) %>'
#  @page.identifier = '<= @post.id %>'
#  return
#
#do ->
#  d = document
#  s = d.createElement('script')
#  s.src = '//sdromacqueportfolio.disqus.com/embed.js'
#  s.setAttribute 'data-timestamp', +new Date
#  (d.head or d.body).appendChild s
#  return