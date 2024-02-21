// 아코디언 메뉴 (어떤 곳에서든 클래스명만 맞춰서 추가로 넣어주면 전부 적용됨 - 응용 편함)
$(function(){
  var accordionButton = $('.accordion-list .accordion-item > .accordion-link');
  accordionButton.on('click', function(e){
    e.preventDefault();
    var $this = $(this);
    var target = $this.parent();
    var description = $this.siblings('.accordion-desc');
    var other = target.siblings('.accordion-item');
    var otherDescription = other.find('.accordion-desc');
    accordionToggle(target, description, other, otherDescription);
  });

  // 파라미터 정리
  // target = 아이템 활성화 버튼
  // description = 활성화 콘텐츠
  // other = 활성화 시킬때 다른 형제 아이템 활성화 버튼
  // otherDescription = 활성화 시킬때 다른 형제 아이템 활성화 콘텐츠
  function accordionToggle(target, description, other, otherDescription){
    if (target.hasClass('active')) {
      target.removeClass('active');
      description.stop().slideUp(300);
    } else {
      target.addClass('active');
      description.stop().slideDown(300);
    }

    // other, otherDescription 파라미터는 아코디언을 활성화 시킬때 다른 활성화된 아이템을 접기 위한 파라미터 입니다. 만약 다른 아이템들은 접히지 않아도 된다면 해당 파라미터를 비워두면 됩니다.
    if (other && otherDescription) {
      other.removeClass('active');
      otherDescription.stop().slideUp(300);
    }
  };
});

// // 만약 페이지 로딩 후에 동적으로 메뉴가 생성되는 경우가 있고 그 메뉴도 똑같이 기능을 해야한다면 아래 코드를 사용하면 됩니다.
// $(document).on('click', '.accordion-list .accordion-item > .accordion-link', function(e){
//   e.preventDefault();
//   var $this = $(this);
//   var target = $this.parent();
//   var description = $this.siblings('.accordion-desc');
//   var other = target.siblings('.accordion-item');
//   var otherDescription = other.find('.accordion-desc');
//   accordionToggle(target, description, other, otherDescription);
// });

// // 파라미터 정리
// // target = 아이템 활성화 버튼
// // description = 활성화 콘텐츠
// // other = 활성화 시킬때 다른 형제 아이템 활성화 버튼
// // otherDescription = 활성화 시킬때 다른 형제 아이템 활성화 콘텐츠
// function accordionToggle(target, description, other, otherDescription){
//   if (target.hasClass('active')) {
//     target.removeClass('active');
//     description.stop().slideUp(300);
//   } else {
//     target.addClass('active');
//     description.stop().slideDown(300);
//   }

// // other, otherDescription 파라미터는 아코디언을 활성화 시킬때 다른 활성화된 아이템을 접기 위한 파라미터 입니다. 만약 다른 아이템들은 접히지 않아도 된다면 해당 파라미터를 비워두면 됩니다.
//   if (other && otherDescription) {
//     other.removeClass('active');
//     otherDescription.stop().slideUp(300);
//   }
// };