/* eslint-env jasmine, jquery */
/* global GOVUK */

describe('An option select component', function () {
  'use strict'

  function optionSelectWithAttrs (attrs) {
    return '<div class="app-c-option-select" ' + attrs + '>' +
      '<div class="app-c-option-select__container-head js-container-head"></div>' +
      '<div class="app-c-option-select__container js-options-container"></div>' +
    '</div>'
  }

  var $element
  var optionSelect
  /* eslint-disable */
  var html = '\
    <div class="app-c-option-select" data-module="option-select" data-closed-on-load="false">' +
      '<div class="app-c-option-select__title js-container-head">' +
        'Market sector' +
      '</div>' +
      '<div class="app-c-option-select__container js-options-container">' +
        '<div class="app-c-option-select__container-inner js-auto-height-inner">' +
          '<div id="checkboxes-9b7ecc25" class="gem-c-checkboxes govuk-form-group" data-module="checkboxes">' +
            '<fieldset class="govuk-fieldset">' +
              '<legend class="govuk-fieldset__legend govuk-fieldset__legend--m gem-c-checkboxes__legend--hidden">Please select all that apply</legend>' +
              '<ul class="govuk-checkboxes gem-c-checkboxes__list">' +
                '<li class="govuk-checkboxes__item">' +
                  '<input type="checkbox" name="market_sector[]" id="aerospace" value="aerospace" class="govuk-checkboxes__input" />' +
                  '<label for="aerospace" class="govuk-label govuk-checkboxes__label">Aerospace</label>' +
                '</li>' +
                '<li class="govuk-checkboxes__item">' +
                  '<input type="checkbox" name="market_sector[]" id="agriculture-environment-and-natural-resources" value="agriculture-environment-and-natural-resources" class="govuk-checkboxes__input" />' +
                  '<label for="agriculture-environment-and-natural-resources" class="govuk-label govuk-checkboxes__label">Agriculture, environment, natural resources, agriculture, environment, natural resources, agriculture, environment, natural resources, agriculture, environment, natural resources, agriculture, environment, natural resources, agriculture, environment and natural resources.</label>' +
                '</li>' +
                '<li class="govuk-checkboxes__item">' +
                  '<input type="checkbox" name="market_sector[]" id="building-and-construction" value="building-and-construction" class="govuk-checkboxes__input" />' +
                  '<label for="building-and-construction" class="govuk-label govuk-checkboxes__label">Building and construction</label>' +
                '</li>' +
                '<li class="govuk-checkboxes__item">' +
                  '<input type="checkbox" name="market_sector[]" id="chemicals" value="chemicals" class="govuk-checkboxes__input" />' +
                  '<label for="chemicals" class="govuk-label govuk-checkboxes__label">Chemicals</label>' +
                '</li>' +
                '<li class="govuk-checkboxes__item">' +
                  '<input type="checkbox" name="market_sector[]" id="clothing-footwear-and-fashion" value="clothing-footwear-and-fashion" class="govuk-checkboxes__input" />' +
                  '<label for="clothing-footwear-and-fashion" class="govuk-label govuk-checkboxes__label">Clothing, footwear and fashion</label>' +
                '</li>' +
                '<li class="govuk-checkboxes__item">' +
                  '<input type="checkbox" name="market_sector[]" id="defence" value="defence" class="govuk-checkboxes__input" />' +
                  '<label for="defence" class="govuk-label govuk-checkboxes__label">Defence</label>' +
                '</li>' +
                '<li class="govuk-checkboxes__item">' +
                  '<input type="checkbox" name="market_sector[]" id="distribution-and-service-industries" value="distribution-and-service-industries" class="govuk-checkboxes__input" />' +
                  '<label for="distribution-and-service-industries" class="govuk-label govuk-checkboxes__label">Distribution &amp; Service Industries</label>' +
                '</li>' +
                '<li class="govuk-checkboxes__item">' +
                  '<input type="checkbox" name="market_sector[]" id="electronics-industry" value="electronics-industry" class="govuk-checkboxes__input" />' +
                  '<label for="electronics-industry" class="govuk-label govuk-checkboxes__label">Electronics Industry</label>' +
                '</li>' +
                '<li class="govuk-checkboxes__item">' +
                  '<input type="checkbox" name="market_sector[]" id="energy" value="energy" class="govuk-checkboxes__input" />' +
                  '<label for="energy" class="govuk-label govuk-checkboxes__label">Energy</label>' +
                '</li>' +
                '<li class="govuk-checkboxes__item">' +
                  '<input type="checkbox" name="market_sector[]" id="engineering" value="engineering" class="govuk-checkboxes__input" />' +
                  '<label for="engineering" class="govuk-label govuk-checkboxes__label">Engineering</label>' +
                '</li>' +
                '<li class="govuk-checkboxes__item">' +
                  '<input type="checkbox" name="market_sector[]" id="thatdepartment" value="thatdepartment" class="govuk-checkboxes__input" />' +
                  '<label for="thatdepartment" class="govuk-label govuk-checkboxes__label">Closed organisation: Department for Fisheries, War Widows\' pay, Farmers’ rights - sheep and goats, Farmer\'s rights – cows & llamas</label>' +
                '</li>' +
                '<li class="govuk-checkboxes__item">' +
                  '<input type="checkbox" name="market_sector[]" id="militarycourts" value="militarycourts" class="govuk-checkboxes__input" />' +
                  '<label for="militarycourts" class="govuk-label govuk-checkboxes__label">1st and 2nd Military Courts</label>' +
                '</li>' +
              '</ul>' +
            '</fieldset>' +
          '</div>' +
        '</div>' +
      '</div>'
  /* eslint-enable */

  beforeEach(function () {
    optionSelect = new GOVUK.Modules.OptionSelect()
  })

  afterEach(function () {
    $('body').find('.app-c-option-select').remove()
  })

  describe('on load', function () {
    it('instantiates a closed option-select if data-closed-on-load is true', function () {
      var $closedOnLoadFixture = $(optionSelectWithAttrs('data-closed-on-load=true'))
      $('body').append($closedOnLoadFixture)
      optionSelect.start($closedOnLoadFixture)

      expect($closedOnLoadFixture.find('button').attr('aria-expanded')).toBe('false')
    })

    it('instantiates an open option-select if data-closed-on-load is false', function () {
      var $openOnLoadFixture = $(optionSelectWithAttrs('data-closed-on-load=false'))
      $('body').append($openOnLoadFixture)
      optionSelect.start($openOnLoadFixture)

      expect($openOnLoadFixture.find('button').attr('aria-expanded')).toBe('true')
      expect($('body').find('.js-options-container').is(':visible')).toBe(true)
    })

    it('instantiates an open option-select if data-closed-on-load is not present', function () {
      var $openOnLoadFixture = $(optionSelectWithAttrs(''))
      $('body').append($openOnLoadFixture)
      optionSelect.start($openOnLoadFixture)

      expect($openOnLoadFixture.find('button').attr('aria-expanded')).toBe('true')
      expect($('body').find('.js-options-container').is(':visible')).toBe(true)
    })

    it('sets the height of the options container as part of initialisation', function () {
      $element = $(html)
      optionSelect.start($element)

      expect($element.find('.js-options-container').attr('style')).toContain('height')
    })

    it('doesn\'t set the height of the options container as part of initialisation if closed-on-load is true', function () {
      var $closedOnLoadFixture = $(optionSelectWithAttrs('data-closed-on-load=true'))
      optionSelect.start($closedOnLoadFixture)

      expect($closedOnLoadFixture.find('.js-options-container').attr('style')).not.toContain('height')
    })

    it('replaces the `div.app-c-option-select__container-head` with a button', function () {
      $element = $(html)
      optionSelect.start($element)

      expect($element.find('button')).toBeDefined()
    })
  })

  describe('toggleOptionSelect', function () {
    beforeEach(function () {
      $element = $(html)
      $('body').append($element)
      optionSelect.start($element)
    })

    it('calls optionSelect.close() if the optionSelect is currently open', function () {
      $element.removeClass('js-closed')
      spyOn(optionSelect, 'close')
      optionSelect.toggleOptionSelect(jQuery.Event('click'))
      expect(optionSelect.close.calls.count()).toBe(1)
    })

    it('calls optionSelect.open() if the optionSelect is currently closed', function () {
      $element.addClass('js-closed')
      spyOn(optionSelect, 'open')
      optionSelect.toggleOptionSelect(jQuery.Event('click'))
      expect(optionSelect.open.calls.count()).toBe(1)
    })
  })

  describe('when the open/close button is clicked', function () {
    beforeEach(function () {
      $element = $(html)
      $('body').append($element)
      optionSelect.start($element)
    })

    it('closes and opens the option select', function () {
      var $button = $element.find('button')
      $button.click()
      expect($element.hasClass('js-closed')).toBe(true)

      $button.click()
      expect($element.hasClass('js-closed')).toBe(false)
    })

    it('updates aria-expanded accordingly', function () {
      var $button = $element.find('button')
      $button.click()
      expect($element.find('button').attr('aria-expanded')).toBe('false')

      $button.click()
      expect($element.find('button').attr('aria-expanded')).toBe('true')
    })
  })

  describe('isCheckboxVisible', function () {
    var firstCheckbox, lastCheckbox

    beforeEach(function () {
      $element = $(html)
      $('body').append($element)
      optionSelect.start($element)

      optionSelect.setContainerHeight(100)
      optionSelect.$optionsContainer.width(100)
      firstCheckbox = optionSelect.$allCheckboxes[0]
      lastCheckbox = optionSelect.$allCheckboxes[optionSelect.$allCheckboxes.length - 1]
    })

    it('returns true if a label is visible', function () {
      expect(optionSelect.isCheckboxVisible(0, firstCheckbox)).toBe(true)
    })

    it('returns true if a label is outside its container', function () {
      expect(optionSelect.isCheckboxVisible(0, lastCheckbox)).toBe(false)
    })
  })

  describe('getvisibleCheckboxes', function () {
    var lastLabelForAttribute, lastVisibleLabelForAttribute

    beforeEach(function () {
      $element = $(html)
      $('body').append($element)
      optionSelect.start($element)
    })

    it('returns all the checkboxes if the container doesn\'t overflow', function () {
      expect(optionSelect.$allCheckboxes.length).toBe(optionSelect.getVisibleCheckboxes().length)
    })

    it('only returns some of the first checkboxes if the container\'s dimensions are constricted', function () {
      optionSelect.setContainerHeight(100)
      optionSelect.$optionsContainer.width(100)

      var visibleCheckboxes = optionSelect.getVisibleCheckboxes()
      expect(visibleCheckboxes.length).toBeLessThan(optionSelect.$allCheckboxes.length)

      lastLabelForAttribute = optionSelect.$allCheckboxes[optionSelect.$allCheckboxes.length - 1].getElementsByClassName('govuk-checkboxes__input')[0].getAttribute('id')
      lastVisibleLabelForAttribute = visibleCheckboxes[visibleCheckboxes.length - 1].getAttribute('id')
      expect(lastLabelForAttribute).not.toBe(lastVisibleLabelForAttribute)
    })
  })

  describe('setupHeight', function () {
    var $checkboxList, $checkboxListInner

    beforeEach(function () {
      $element = $(html)
      $('body').append($element)

      // Set some visual properties which are done in the CSS IRL
      $checkboxList = $element.find('.js-options-container')
      $checkboxList.css({
        'height': 200,
        'position': 'relative',
        'overflow': 'scroll'
      })
      $checkboxList.find('label').css({
        'display': 'block'
      })

      $checkboxListInner = $checkboxList.find(' > .js-auto-height-inner')
      optionSelect.start($element)
    })

    it('expands the checkbox-container to fit checkbox list if the list is < 50px larger than the container', function () {
      $checkboxListInner.height(201)
      optionSelect.setupHeight()

      // Wrapping HTML should adjust to fit inner height
      // but we add 1px because some browsers still add a scrollbar
      expect($checkboxList.height()).toBe($checkboxListInner.height() + 1)
    })

    it('expands the checkbox-container just enough to cut the last visible item in half horizontally, if there are many items', function () {
      $checkboxList.css({
        'max-height': 200,
        'width': 600
      })
      optionSelect.setupHeight()

      // Wrapping HTML should not stretch as 251px is too big.
      expect($checkboxList.height()).toBeGreaterThan(100)
    })
  })

  describe('initialising when the parent is hidden', function () {
    beforeEach(function () {
      $element = $(html)
      var $wrapper = $('<div/>').addClass('wrapper').hide().html($element)
      $('body').append($wrapper)
      optionSelect.start($element)
    })

    afterEach(function () {
      $('.wrapper').remove()
    })

    it('sets the height of the container sensibly', function () {
      var containerHeight = $('body').find('.js-options-container').height()
      expect(containerHeight).toBe(201)
    })
  })

  describe('initialising when the parent is hidden and data-closed-on-load is true', function () {
    beforeEach(function () {
      $element = $(html)
      $element.attr('data-closed-on-load', true)
      var $wrapper = $('<div/>').addClass('wrapper').hide().html($element)
      $('body').append($wrapper)
      optionSelect.start($element)
    })

    afterEach(function () {
      $('.wrapper').remove()
    })

    it('sets the height of the container sensibly when the option select is opened', function () {
      $('.wrapper').show()
      $element.find('button').click()

      var containerHeight = $('.js-options-container').height()
      expect(containerHeight).toBeGreaterThan(200)
      expect(containerHeight).toBeLessThan(550)
    })
  })

  describe('filtering checkboxes', function () {
    var $filterInput, $count

    beforeEach(function () {
      $element = $(html)
      var filterMarkup =
            '&lt;label for=&quot;input-b7f768b7&quot; class=&quot;gem-c-label govuk-label&quot;&gt;' +
              'Filter Countries' +
            '&lt;/label&gt;' +
            '&lt;input name=&quot;option-select-filter&quot; class=&quot;gem-c-input app-c-option-select__filter-input govuk-input&quot; id=&quot;input-b7f768b7&quot; type=&quot;text&quot; aria-describedby=&quot;checkboxes-9b7ecc25-count&quot; aria-controls=&quot;checkboxes-9b7ecc25&quot;&gt;'

      var filterSpan = '<span id="checkboxes-9b7ecc25-count" class="app-c-option-select__count govuk-visually-hidden" aria-live="polite" data-single="option found" data-multiple="options found" data-selected="selected"></span>'

      $element.attr('data-filter-element', filterMarkup)
      $element.find('.gem-c-checkboxes').prepend($(filterSpan))
      $('body').append($element)
      optionSelect.start($element)

      jasmine.clock().install()
      $filterInput = $element.find('[name="option-select-filter"]')
      $count = $('#checkboxes-9b7ecc25-count')
    })

    afterEach(function () {
      jasmine.clock().uninstall()
    })

    it('filters the checkboxes and updates the filter count correctly', function () {
      expect($('.govuk-checkboxes__item:visible').length).toBe(12)

      $filterInput.val('in').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(5)
      expect($count.text()).toBe('5 options found, 0 selected')

      $filterInput.val('ind').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(2)
      expect($count.html()).toBe('2 options found, 0 selected')

      $filterInput.val('shouldnotmatchanything').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(0)
      expect($count.html()).toBe('0 options found, 0 selected')
    })

    it('does not propagate keypresses up', function () {
      var e = jQuery.Event('keyup', { keyCode: 13 }) // enter
      $filterInput.trigger(e)

      expect(e.isDefaultPrevented()).toBe(true)
    })

    it('shows checked checkboxes regardless of whether they match the filter', function () {
      $('#building-and-construction').prop('checked', true).change()
      $('#chemicals').prop('checked', true).change()
      jasmine.clock().tick(100)

      $filterInput.val('electronics').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(3)
      expect($count.html()).toBe('3 options found, 2 selected')

      $filterInput.val('shouldnotmatchanything').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(2)
      expect($count.html()).toBe('2 options found, 2 selected')
    })

    it('matches a filter regardless of text case', function () {
      $filterInput.val('electroNICS industry').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(1)
      expect($count.html()).toBe('1 option found, 0 selected')

      $filterInput.val('Building and construction').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(1)
      expect($count.html()).toBe('1 option found, 0 selected')
    })

    it('matches ampersands correctly', function () {
      $filterInput.val('Distribution & Service Industries').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(1)
      expect($count.html()).toBe('1 option found, 0 selected')

      $filterInput.val('Distribution &amp; Service Industries').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(0)
      expect($count.html()).toBe('0 options found, 0 selected')
    })

    it('ignores whitespace around the user input', function () {
      $filterInput.val('   Clothing, footwear and fashion    ').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(1)
      expect($count.html()).toBe('1 option found, 0 selected')
    })

    it('ignores duplicate whitespace in the user input', function () {
      $filterInput.val('Clothing,     footwear      and      fashion').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(1)
      expect($count.html()).toBe('1 option found, 0 selected')
    })

    it('ignores common punctuation characters', function () {
      $filterInput.val('closed organisation department for Fisheries War Widows pay Farmers rights sheep and goats Farmers rights cows & llamas').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(1)
      expect($count.html()).toBe('1 option found, 0 selected')
    })

    it('normalises & and and', function () {
      $filterInput.val('cows & llamas').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(1)
      expect($count.html()).toBe('1 option found, 0 selected')

      $filterInput.val('cows and llamas').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(1)
      expect($count.html()).toBe('1 option found, 0 selected')
    })

    // there was a bug in cleanString() where numbers were being ignored
    it('does not strip out numbers', function () {
      $filterInput.val('1st and 2nd Military Courts').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(1)
      expect($count.html()).toBe('1 option found, 0 selected')

      $filterInput.val('footwear and f23907234973204723094ashion').keyup()
      jasmine.clock().tick(400)
      expect($('.govuk-checkboxes__input:visible').length).toBe(0)
      expect($count.html()).toBe('0 options found, 0 selected')
    })
  })
})
