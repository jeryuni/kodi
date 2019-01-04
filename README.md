# Kodi 17.X Krypton

## 1. 스킨 설치
https://forum.kodi.tv/showthread.php?tid=307568
+ 압축 파일에서 설치
    - https://github.com/Alanon202/repository.alanon/tree/master/leia/repository.alanon
        = repository.alanon-1.0.2.zip
    - https://github.com/marcelveldt/repository.marcelveldt/tree/master/repository.marcelveldt
        = repository.marcelveldt-1.0.1.zip
+ 저장소에서 설치
    - 모든 저장소
        - 모양새
            - 스킨
                + Eminence 2.0 MOD
    - 비디오 애드온
        + Library Data Provider
    - 서비스
        + Next Service notification
    - 프로그램
        + Global Search
        + ToolBox Script
    - 날씨
        + Yahoo! Weather
## 2. Kodi 글꼴 설정 스크립트
- OSMC
    + https://github.com/jeryuni/kodi/raw/master/osmc-01-font.sh
- Win32/64
    + https://github.com/jeryuni/windows/raw/master/tools/curl.exe
    + https://github.com/jeryuni/kodi/raw/master/windows-01-font.cmd
## 3. 설정
- 전문가
```xml
<general><settinglevel>3</settinglevel></general>
```
- 인터페이스
    - 스킨
        + 스킨 = Eminence 2.0 MOD
		```xml
		<lookandfeel><skin>skin.eminence.2.mod.Krypton</skin></lookandfeel>
		```
        + 글꼴 : Arial
		```xml
		<lookandfeel><font>Arial</font></lookandfeel>
		```
    - 지역
        + 언어 : Korean
		```xml
		<locale><country>Korea (12h)</country><language>resource.language.ko_kr</language></locale>
		```
		+ 키보드 레이아웃 : English QWERTY, Korean ㄱㄴㄷ
		```xml
		<locale><keyboardlayouts>English QWERTY|Korean ㄱㄴㄷ</keyboardlayouts></locale>
		```
- 라이브러리
    - 일반
        + 파일 확장자 보기 : 체크 해제
		```xml
        <filelists><showextensions>false</showextensions></filelists>
		```
- 시스템
    - 애드온
        + 알 수 없는 소스 : 체크
		```xml
        <addons><unknownsources>true</unknownsources></addons>
		```
- 플레이어
    - 비디오
        + 화면에 재생 동기 : 체크
		```xml
        <videoplayer><usedisplayasclock>true</usedisplayasclock></videoplayer>
		```
    - 언어
        + 선호하는 자막 언어 : 사용자 인터페이스 언어
		```xml
        <locale><subtitlelanguage>default</subtitlelanguage></locale>
		```
        + 텍스트 자막에 사용할 글꼴 : cinema.ttf
		```xml
        <subtitles><font>cinema.ttf</font></subtitles>
		```
        + 크기 : 42
		```xml
        <subtitles><height>42</height></subtitles>
		```
        + 스타일 : 보통
		```xml
        <subtitles><style>0</style></subtitles>
		```
- 서비스
    - 컨트롤
        + HTTP를 통한 원격 제어 허용 : 체크
		```xml
        <services><webserver>true</webserver></services>
		```
        + 사용자명 : 빈칸
        ```xml
		<services><webserverusername></webserverusername></services>
		```
    - UPnP / DLNA
        + 내 라이브러리 공유 : 체크
		```xml
        <services><upnpserver>true</upnpserver></services>
        ```
		+ 원격 UPnP 플레이어 검색 : 체크
        ```xml
		<services><upnpcontroller>true</upnpcontroller></services>
        ```
		+ UPnP를 통한 원격 제어 허용 : 체크
        ```xml
		<services><upnprenderer>true</upnprenderer></services>
		```
    - 날씨
        + 날씨 정보 서비스 : Yahoo! Weather
        ```xml
		<weather><addon>weather.yahoo</addon></weather>
        ```