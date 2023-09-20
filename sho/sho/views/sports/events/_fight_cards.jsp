{{#fightCards}}
  <h3 class="section-header section-header--border">{{heading}}</h3>
  <div class="slider slider--fight-card js-slider section--large" data-step="page" data-context="slider:fights">
    <a href="#" class="slider__control slider__control--prev">
      <span class="slider__control__label">previous</span>
    </a>
    <div class="slider__container">
      <div class="slider__content">
        <ul class="slider__items">
          {{#fightCardList}}
          <li class="slider__item">
      <div class="fight-card {{#iter.isFirst}}fight-card--main-card{{/iter.isFirst}} {{^eventView.mainCardTuneIn}}fight-card--post{{/eventView.mainCardTuneIn}}">
        <header class="fight-card__header">
            <div class="fight-card__fighter-left {{#topDog.winner}}fight-card--winner{{/topDog.winner}}">
              <img class="fight-card__fighter-photo" src="{{topDog.imageUrl}}">
              <div class="fight-card__fighter-name-record">
                  <div class="fight-card__fighter-first-name">{{topDog.firstName}}</div>
                  <div class="fight-card__fighter-last-name">{{topDog.lastName}}</div>
                  <div class="fight-card__fighter-record">{{topDog.record}}</div>
          {{#topDog.winner}}
            <div class="fight-card__fighter-result">win</div>
          {{/topDog.winner}}
          {{^topDog.winner}}
            {{#challenger.winner}}
              <div class="fight-card__fighter-result">loss</div>
            {{/challenger.winner}}
            {{^challenger.winner}}
              <div class="fight-card__fighter-result">draw</div>
            {{/challenger.winner}}
          {{/topDog.winner}}
              </div>
            </div>
          <div class="fight-card__vs-circle"></div>
          <div class="fight-card__row">
                vs
          </div>
            <div class="fight-card__fighter-right {{#challenger.winner}}fight-card--winner{{/challenger.winner}}">
              <img class="fight-card__fighter-photo" src="{{challenger.imageUrl}}">
              <div class="fight-card__fighter-name-record">
                  <div class="fight-card__fighter-first-name">{{challenger.firstName}}</div>
                  <div class="fight-card__fighter-last-name">{{challenger.lastName}}</div>
                  <div class="fight-card__fighter-record">{{challenger.record}}</div>
          {{#challenger.winner}}
            <div class="fight-card__fighter-result">win</div>
          {{/challenger.winner}}
          {{^challenger.winner}}
            {{#topDog.winner}}
              <div class="fight-card__fighter-result">loss</div>
            {{/topDog.winner}}
            {{^topDog.winner}}
              <div class="fight-card__fighter-result">draw</div>
            {{/topDog.winner}}
          {{/challenger.winner}}
              </div>
          </div>
        </header>
        <section class="fight-card__body">
            <div class="fight-card__row">
                <div class="fight-card__fighter-left">{{topDog.age}}</div>
                <div class="fight-card__fighter-center">Age</div>
                <div class="fight-card__fighter-right">{{challenger.age}}</div>
            </div>
            <div class="fight-card__row">
                <div class="fight-card__fighter-left">{{topDog.origin}}</div>
                <div class="fight-card__fighter-center">Origin</div>
                <div class="fight-card__fighter-right">{{challenger.origin}}</div>
            </div>
            <div class="fight-card__row">
                <div class="fight-card__fighter-left">{{topDog.height}}</div>
                <div class="fight-card__fighter-center">Height</div>
                <div class="fight-card__fighter-right">{{challenger.height}}</div>
            </div>
            <div class="fight-card__row">
                <div class="fight-card__fighter-left">{{topDog.reach}}</div>
                <div class="fight-card__fighter-center">Reach</div>
                <div class="fight-card__fighter-right">{{challenger.reach}}</div>
            </div>
        </section>
        <footer class="fight-card__footer">
      {{#iter.isFirst}}
        {{#eventView.mainCardTuneIn}}
          <div class="fight-card__tune-in">{{eventView.mainCardTuneIn}}</div>
        {{/eventView.mainCardTuneIn}}
        {{#eventView.replay}}
          <div class="fight-card__tune-in">replay {{eventView.replay}}</div>
        {{/eventView.replay}}
      {{/iter.isFirst}}
      {{^iter.isFirst}}
        {{#eventView.underCardTuneIn}}
          <div class="fight-card__tune-in">{{eventView.underCardTuneIn}}</div>
        {{/eventView.underCardTuneIn}}
        {{#eventView.replay}}
          <div class="fight-card__tune-in">replay {{eventView.replay}}</div>
        {{/eventView.replay}}
      {{/iter.isFirst}}
        </footer>
      </div>
          </li>
          {{/fightCardList}}
        </ul>
      </div>
    </div>
    <a href="#" class="slider__control slider__control--next">
      <span class="slider__control__label">next</span>
    </a>
  </div>
{{/fightCards}}