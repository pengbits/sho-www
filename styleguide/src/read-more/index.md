---
name: Read More Read Less v2
collection: components
---

# Read More 

This refactor of the read more/read less pattern supports two modes: inline and block. Inline appends the toggle to the (non-truncated) text and is meant to be used for smaller lengths of copy in contexts like the Hero. Block mode places the toggle under the copy and is intended for longer text, with possibility of animating the hidden text as flipping the display on. Block mode is a replacement for the existing read-more component current in production, while inline is a new component variant/feature.


## Mode=Block

Block mode is the Read-More component currently in production. This version doesn't peform any runtime height calculation, rather it relies on the truncated text being isolated in a div with a classnamne of `.read-more__content`. The (truncated) text is animated in and out of view, and the scroll offset is restored when the user collapses the block.

<div class="read-more-example">
  <div class="about-bio js-read-more" data-mode="block">
    <div class="about-bio__details">
      <h2 class="about-bio__name">David Nevins</h2>
      <p class="about-bio__title">Chief Creative Officer, CBS Corporation,<br>Chairman and Chief Executive Officer, Showtime Networks Inc.</p>
      <p class="about-bio__description">David Nevins serves as Chief Creative Officer, CBS. He is responsible for oversight of programming, marketing and research across CBS Television Studios, the CBS Television Network's Entertainment division, and, in conjunction with CBS Interactive, programming for CBS All Access. Nevins has oversight of all aspects of Showtime Networks Inc. and its channels, along with BET and Pop TV. He also oversees CBS' interest in The CW, a joint venture between CBS Corporation and Warner Bros. Entertainment.</p>
      <div class="read-more__content">
        <p class="about-bio__description">Nevins also chairs the ViacomCBS Content Council, comprised by content leaders across the company, to ensure that these leaders and other senior executives are working together to maximize the use of IP and talent relationships across the combined company.</p>
        <p class="about-bio__description">As Chairman and Chief Executive Officer of Showtime Networks Inc., Nevins manages the Company's programming, distribution, business development, finance, marketing, scheduling, research, streaming, acquisitions, legal, network operations, and corporate communications teams, as well as SHOWTIME Sports®. He also works closely with CBS Corporation's international and domestic distribution groups on the monetization of Showtime Networks content around the world.</p>
        <p class="about-bio__description">Since joining the company in 2010 and under his leadership, SHOWTIME launched its stand-alone streaming service, along with countless hit series, including the critically acclaimed originals HOMELAND, BILLIONS, RAY DONOVAN, SHAMELESS, THE AFFAIR, THE CIRCUS, THE CHI and TWIN PEAKS. The first project greenlit by Nevins at the network, HOMELAND, was the recipient of Golden Globe® and Emmy® Awards for Outstanding Drama Series, as well as a prestigious Peabody Award. During his tenure, SHOWTIME has also become the industry leader in boxing.</p>
        <p class="about-bio__description">Before joining Showtime Networks, Nevins was an Emmy Award-winning producer and network programming executive. He served as President of Imagine Television from 2002-2010, where he oversaw development, production and was an executive producer on all Imagine Television shows. Under his leadership, Imagine produced ARRESTED DEVELOPMENT, which won the Emmy for Outstanding Comedy Series, and 24, which won for Outstanding Drama Series. He also developed and executive produced PARENTHOOD, LIE TO ME, SHARK, and the critically acclaimed series FRIDAY NIGHT LIGHTS, which received honors from the American Film Institute (AFI) for Television Program of the Year and the prestigious George Foster Peabody Award. Nevins also received an Emmy Award nomination for his work as an executive producer on the final season of FRIDAY NIGHT LIGHTS.</p>
        <p class="about-bio__description">Prior to joining Imagine, Nevins served as Executive Vice President of Programming at Fox Broadcasting Company. He oversaw all development and current programming for such series as THE BERNIE MAC SHOW, MALCOLM IN THE MIDDLE, as well as the Emmy and Golden Globe® Award-winning first season of 24. Previously, Nevins served as Senior Vice President, Primetime Series at NBC, where he was responsible for the development and creative supervision of such renowned dramas and comedies as ER, THE WEST WING, WILL &amp; GRACE, HOMICIDE: LIFE ON THE STREET and LAW &amp; ORDER: SVU.</p>
        <p class="about-bio__description">In 2014, Nevins was awarded the prestigious Vanguard Award for Programmers, the National Cable and Telecommunications Association's (NCTA) top honor. He serves on various industry boards, including the HRTS Board of Directors, the George Foster Peabody Awards Board of Advisors, the Paley Center Los Angeles Board of Governors, and is on the ATAS Executive Committee. Nevins currently serves as the Vice President of the Board of Directors for the Friends of the Saban Community Clinic, who honored him with the Leadership Award at their annual Gala in 2013. In 2016, Nevins was honored with the Dorothy and Sherrill C. Corwin Human Relations Award from the American Jewish Committee Los Angeles.</p>
        <p class="about-bio__description">Nevins graduated with a Bachelor of Arts from Amherst College in Amherst, Mass. He and his wife, Emmy Award winning and Academy Award® nominated documentary filmmaker Andrea Blaugrund Nevins, live in Los Angeles with their daughter and two sons.</p>
      </div>
      <div class="read-more"><a class="read-more__toggle">Read More</a></div>
    </div>
  </div>
</div>


## Mode=Inline aka Clamp

Inline Mode. This limits the block of text to 3* lines with line-clamp, and appends a toggle just outside the container.

<div class="read-more-example">
  <section class="refresh-hero hero--promo-video hero--panel-link">
    <div class="refresh-hero__body">   
      <a href="/george-and-tammy" data-track="" data-label="series site link:George &amp; Tammy" data-location="panel link">
        <div class="refresh-hero__headline hero__headline__link">
          George &amp; Tammy
        </div>
      </a>
      <div class="refresh-hero__info">New Series Streaming Dec 4</div>
      <div class="refresh-hero__detail">
        <div class="refresh-hero__description read-more js-read-more" data-mode="inline">
          <div class="read-more__inner">
            <p>Starring Oscar® winner <strong>Jessica Chastain</strong> and Oscar nominee <strong>Michael Shannon</strong>, GEORGE & TAMMY chronicles the country music power couple, Tammy Wynette and George Jones, whose complicated-but-enduring relationship inspired some of the most iconic music of all time.</p>
            <p> Remembered as the “<em>First Lady of Country Music</em>,” Wynette’s most successful song “Stand by Your Man” remains one of the most iconic and best-selling country singles by a female artist. Known for his once-in-a-lifetime voice, George Jones’ song “He Stopped Loving Her Today,” is still widely called the greatest country song of all time. With over 30 number-one country songs between them, including duets “We’re Gonna Hold On,” “Golden Ring” and “Near You,” George and Tammy’s legacy, both musically and romantically, remains one of the greatest love stories ever told.</p>
          </div>
        </div>
        <a class="refresh-hero__cta button--secondary button--video" href="/video/79902/george-and-tammy-official-trailer" wdata-track="" data-label="trailer video:Watch Trailer" data-location="cta">Watch Trailer</a>
      </div>
    </div>
  </section>
</div>



## Mode=Inline no Truncating required

When there is less than 3* lines of copy, we shouldn't see the more button or the gradient

<div class="read-more-example">
  <section class="refresh-hero hero--promo-video hero--panel-link">
    <div class="refresh-hero__body">   
      <a href="/george-and-tammy" data-track="" data-label="series site link:George &amp; Tammy" data-location="panel link">
        <div class="refresh-hero__headline hero__headline__link">
          George &amp; Tammy
        </div>
      </a>
      <div class="refresh-hero__info">New Series Streaming Dec 4</div>
      <div class="refresh-hero__detail">
        <div class="refresh-hero__description read-more js-read-more" data-mode="inline">
          <div class="read-more__inner">
            <p>Starring Oscar® winner <strong>Jessica Chastain</strong> and Oscar nominee <strong>Michael Shannon</strong>, GEORGE & TAMMY chronicles the country music power couple, Tammy Wynette and George Jones, whose complicated-but-enduring relationship inspired some of the most iconic music of all time.</p>
          </div>
        </div>
        <a class="refresh-hero__cta button--secondary button--video" href="/video/79902/george-and-tammy-official-trailer" wdata-track="" data-label="trailer video:Watch Trailer" data-location="cta">Watch Trailer</a>
      </div>
    </div>
  </section>
</div>




\* actually the 3 lines is a bit of a misnomer - we only apply the behavior if the content is more than 5 lines, but when truncated, only 3 are shown. This is intended to avoid truncating content that's only slightly over the limit.

