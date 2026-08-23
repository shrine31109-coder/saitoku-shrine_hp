---
layout: default
description: "栃木県宇都宮市富士見ヶ丘の歳徳神社。由緒・御祭神のご紹介、最新のお知らせ、参拝時間・アクセス情報を掲載しています。"
---

<section class="hero">
  <div class="hero__grid">
    <div class="hero__media">
      <img src="{{ '/assets/images/torii-front.webp' | relative_url }}" alt="歳徳神社の鳥居と社殿">
    </div>

    <div class="hero__content">
      <h1 class="hero__label">由緒御神徳</h1>
      <p>
        萬方位を守りし大神、伊邪那美大神（いざなみのおおかみ）、
        またの御名を歳徳神（さいとくじん）の大神をお祀りしております。
      </p>
      <p>
        歳徳神の大神は太古の代國土を生み諸神を産みて日本の國の守り神となり遠い祖先に農耕、商工、交通、運輸などのあらゆる産業の道をお授け下さった神様であります。わけても古より八方除、地相、家相、方位、日柄よりおこるすべての悪事災難、病気を取除き多くの幸福をもたらす御神徳により「恵方、あきの方の神、」と全国の崇敬をあつめ現在でも幸福をもたらす「恵方の神」として信仰されています。
      </p>
      <p>
      ここ（古くは）宇都宮市山本町に歳徳神社を造営なし神道神力により祓の業を布教なし人々に幸福を授けて守護しております。        
      </p>
      <dl class="hero__facts">
        <div class="hero__fact">
          <dt>御祭神</dt>
          <dd>歳徳神の大神</dd>
        </div>
        <div class="hero__fact">
          <dt>神邦詞</dt>
          <dd>「天徳、地恩、清浄、光明」</dd>
        </div>
      </dl>
    </div>
  </div>
</section>

<hr class="dashed">

<section id="news-summary" class="split">
  <div class="split__media no-duotone">
    <img src="{{ '/assets/images/shrine-hall-interior.webp' | relative_url }}" alt="歳徳神社の季節の飾り付け" loading="lazy" decoding="async">
  </div>
  <div class="split__content">
    <h2>お知らせ</h2>
    {% assign recent_posts = site.posts | limit: 3 %}
    {% if recent_posts.size > 0 %}
      <ul class="news-list">
        {% for post in recent_posts %}
          <li class="news-list__item">
            <span class="news-list__date">{{ post.date | date: "%Y.%m.%d" }}</span>
            <span class="news-list__title"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></span>
          </li>
        {% endfor %}
      </ul>
      <p><a href="{{ '/news.html' | relative_url }}">お知らせ一覧はこちら &rarr;</a></p>
    {% else %}
      <p class="news-list__empty">現在お知らせはありません。</p>
    {% endif %}
  </div>
</section>

<hr class="dashed">

<section id="access-summary" class="split">
  <div class="split__media no-duotone">
    <img src="{{ '/assets/images/shrine-eaves-detail.webp' | relative_url }}" alt="歳徳神社の社号板" loading="lazy" decoding="async">
  </div>
  <div class="split__content">
    <h2>アクセス</h2>
    <p>
      〒320-0011　栃木県宇都宮市3-3-12<br>
      電話番号：028-624-8719
    </p>
    <p><a href="{{ '/access.html' | relative_url }}">祈祷のご案内・参拝時間・詳しいアクセスはこちら &rarr;</a></p>
  </div>
</section>
