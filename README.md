### Create JSON Crawler

- crawling.rb
- Refactoring.rb
- wc_crawling.rb
- post_crawler.rb

- XHR 부분... <br>
<!-- <li>
	<a href="/<%= type == 'webtoon' ? 'webtoon' : 'league' %>/viewer/<%= id %>" class="link_wt ?c_id=<%= id %>">
		<img src="<%= thumbnailImage %>" width="152" height="90" class="img_thumb" alt="<%= title + '' + episodeTitle %>">
		<span class="thumb_cover"></span>
		<strong class="tit_wt"><% if(type=='leaguetoon'){ %><span class="ico_comm ico_league">리그</span><% } else if(ageGrade==19){ %><span class="ico_comm ico_adult">성인</span><% } %><%= title %></strong>
		<span class="txt_info"><%= episodeTitle %></span>
	</a>
	<button type="button" class="btn_comm btn_delete">삭제</button>
</li>
 -->

이런 것을 긁으려고 한다... json으로 날라온 거!!

XHR을 뒤지네!!

Request<br> URL:http://webtoon.daum.net/data/pc/webtoon/list_daily_ranking/finished?timeStamp=1510902444663<br>
Request Method:GET<br>
Status Code:200 OK<br>
Remote Address:113.29.187.36:80<br>
Referrer Policy:no-referrer-when-downgrade<br>
이런 부분!!


- JSON 방식으로 통신하는 이유는, 웹하고, 앱 만들때도 똑같이 보내주면 되니 편하지 html로 data 넣는 것 보다.


- 이런 crawling을 어디까지 쓸 수 있냐면!!
  - 지도에서 길찾기도 json으로 긁어 올 수 있다!!
  - session 정보가 cookie에 들어있네, 같이 넘기면 가져다 쓸 수 있다!! header 정보 중요하지!!


- Session  
  - request(client) -> logic(server) -> response(server) -> html/json/csv(client)
    - 이런 무상태성을 띄어 넘는 것이 session이다. session은 기본적으로 cookie다. cookie는 없애지 않는 이상 남아 있는다.
  - set-cookie 부분을 Header에서 확인 할 수 있다.
    - refresh 할 때마다 set-cookie가 변하네.. 계속 session을 통해서 tracking 한다!!
  - 그 cookie를 그대로 이용한다!!
