{{#messageQueue}}
  {{#iter.isLast}}
    <aside class="notification notification--white notification--no-closer">
      <div class="notification__content">
        {{#isEq type.value "success"}}
          <i class="icon icon--medium icon--check-mark-white notification__icon"></i>
        {{/isEq}}
        <h1 class="notification__message">{{value}}</h1>
      </div>
    </aside>
  {{/iter.isLast}}
{{/messageQueue}}
