ready = function () {
  bulma();
}

$(document).on('turbolinks:request-start', function () {
  $("#container").hide();
  $(".spinner").show();
});

$(document).on('turbolinks:load', ready);
$(document).ready(ready);

function bulma() {
  dropdown();
  closeModal();
  mask();
  bulmaAccordion();
  boxAccordion();
}


function closeModal() {
  $(".close-modal").bind("click", function () {
    $('.modal').animateCss('fadeOut', function () {
      $('.modal').removeClass('is-active');
    });
  })
}

function dropdown() {
  $(".dropdown").unbind().click(function () {
    $(this).toggleClass('is-active');
  });
}
function mask() {
  $('.date').mask("00/00/0000", { placeholder: "__/__/____" });
  $('.hour').mask("00:00", { placeholder: "00:00" });
  $('.cpf').mask("000.000.000-00", { placeholder: "000.000.000-00" });
  $('.cnpj').mask("00.000.000/0000-00", { placeholder: "00.000.000/0000-00" });
  $('.document_number').mask("000-000.000/0000", { placeholder: "000-000.000/0000" });
  $('.cep').mask("00000-000", { placeholder: "00000-000" });
  $('.percent').mask("00.0", { placeholder: "00.0" });
  $('.coin').mask("######0.00", { reverse: true });
  $('.money').mask('000.000.000.000,00', { reverse: true });
}

function bulmaAccordion() {
  $("#accordion .card-header-title").unbind().click(function () {
    $(this).closest("#accordion").children('.card-content').toggle();
  });
}

function boxAccordion() {
  $(".box-accordion").unbind().click(function () {
    element = $(this)
    box = element.closest('.box')

    box.children('.box-content').toggle(function () {
      if (element.children('i').hasClass('fa-angle-up')) {
        element.children('i').removeClass('fa-angle-up').addClass('fa-angle-down');
      } else {
        element.children('i').removeClass('fa-angle-down').addClass('fa-angle-up');
      }
    });
  });
}

function getAll(selector) {
  return Array.prototype.slice.call(document.querySelectorAll(selector), 0);
}