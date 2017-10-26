### This gem adds the most common code analysis tools for a Rails project

## Used tools

1. [Rubocop](https://github.com/bbatsov/rubocop)
2. [Reek](https://github.com/troessner/reek)
3. [Rails Best Practices](https://rails-bestpractices.com/)
4. [SCSS-lint](https://github.com/brigade/scss-lint)

## Installation

```gem install code_analysis```

## How to use the task

_If you wanna run all the code analysis tools_

```rake code_analysis```

_If you wanna disable any code analysis tool_

You can pass some disability rules as params to the rake task using the '/' character

_Example to disable reek and rubocop:_  `rake code_analysis[disable_rubocop/disable_reek]`

_Example to run all tools:_ `rake code_analysis`

_The options to disable tools are:_

* disable_rubocop
* disable_reek
* disable_rails_best_practices
* disable_scss_lint

## What is required to use?
---
## Rubocop

1. Add a `.rubocop.yml` file in the base path of your rails application to customize your cops.

_Recommended one:_

```
Documentation:
  Enabled: false
Style/FrozenStringLiteralComment:
  Enabled: false
```

---
## Reek

1. Add a `.reek` file in the base path of your rails application to customize reek. [Default one.](https://raw.githubusercontent.com/troessner/reek/master/defaults.reek)

---
## Rails best Practices

No needs :)

---

## SCSS lint

1. Add a `.scss_lint.yml` file in the base path of your rails application to customize your linters.

_Recommended one:_

```
scss_files: "app/assets/stylesheets/**/*.scss"
exclude: []
plugin_directories: ['.scss-linters']

plugin_gems: []

severity: warning

linters:
  BangFormat:
    enabled: true
    space_before_bang: true
    space_after_bang: false

  BemDepth:
    enabled: false
    max_elements: 1

  BorderZero:
    enabled: true
    convention: zero

  ChainedClasses:
    enabled: false

  ColorKeyword:
    enabled: true

  ColorVariable:
    enabled: true

  Comment:
    enabled: true
    style: silent

  DebugStatement:
    enabled: true

  DeclarationOrder:
    enabled: true

  DisableLinterReason:
    enabled: false

  DuplicateProperty:
    enabled: true

  ElsePlacement:
    enabled: true
    style: same_line

  EmptyLineBetweenBlocks:
    enabled: true
    ignore_single_line_blocks: true

  EmptyRule:
    enabled: true

  ExtendDirective:
    enabled: false

  FinalNewline:
    enabled: true
    present: true

  HexLength:
    enabled: true
    style: short

  HexNotation:
    enabled: true
    style: lowercase

  HexValidation:
    enabled: true

  IdSelector:
    enabled: true

  ImportantRule:
    enabled: true

  ImportPath:
    enabled: true
    leading_underscore: false
    filename_extension: false

  Indentation:
    enabled: true
    allow_non_nested_indentation: false
    character: space
    width: 2

  LeadingZero:
    enabled: true
    style: exclude_zero

  MergeableSelector:
    enabled: true
    force_nesting: true

  NameFormat:
    enabled: true
    allow_leading_underscore: true
    convention: hyphenated_lowercase

  NestingDepth:
    enabled: true
    max_depth: 3
    ignore_parent_selectors: false

  PlaceholderInExtend:
    enabled: true

  PrivateNamingConvention:
    enabled: false
    prefix: _

  PropertyCount:
    enabled: false
    include_nested: false
    max_properties: 10

  PropertySortOrder:
    enabled: true
    ignore_unspecified: false
    min_properties: 2
    separate_groups: false

  PropertySpelling:
    enabled: true
    extra_properties: []
    disabled_properties: []

  PropertyUnits:
    enabled: true
    global: [
      'ch', 'em', 'ex', 'rem',
      'cm', 'in', 'mm', 'pc', 'pt', 'px', 'q',
      'vh', 'vw', 'vmin', 'vmax',
      'deg', 'grad', 'rad', 'turn',
      'ms', 's',
      'Hz', 'kHz',
      'dpi', 'dpcm', 'dppx',
      '%']
    properties: {}

  PseudoElement:
    enabled: true

  QualifyingElement:
    enabled: true
    allow_element_with_attribute: false
    allow_element_with_class: false
    allow_element_with_id: false

  SelectorDepth:
    enabled: true
    max_depth: 3

  SelectorFormat:
    enabled: true
    convention: hyphenated_lowercase

  Shorthand:
    enabled: true
    allowed_shorthands: [1, 2, 3, 4]

  SingleLinePerProperty:
    enabled: true
    allow_single_line_rule_sets: true

  SingleLinePerSelector:
    enabled: true

  SpaceAfterComma:
    enabled: true
    style: one_space

  SpaceAfterComment:
    enabled: false
    style: one_space
    allow_empty_comments: true

  SpaceAfterPropertyColon:
    enabled: true
    style: one_space

  SpaceAfterPropertyName:
    enabled: true

  SpaceAfterVariableColon:
    enabled: false
    style: one_space

  SpaceAfterVariableName:
    enabled: true

  SpaceAroundOperator:
    enabled: true
    style: one_space

  SpaceBeforeBrace:
    enabled: true
    style: space
    allow_single_line_padding: false

  SpaceBetweenParens:
    enabled: true
    spaces: 0

  StringQuotes:
    enabled: true
    style: single_quotes

  TrailingSemicolon:
    enabled: true

  TrailingWhitespace:
    enabled: true

  TrailingZero:
    enabled: false

  TransitionAll:
    enabled: false

  UnnecessaryMantissa:
    enabled: true

  UnnecessaryParentReference:
    enabled: true

  UrlFormat:
    enabled: true

  UrlQuotes:
    enabled: true

  VariableForProperty:
    enabled: false
    properties: []

  VendorPrefix:
    enabled: true
    identifier_list: base
    additional_identifiers: []
    excluded_identifiers: []

  ZeroUnit:
    enabled: true

  Compass::*:
    enabled: false
```
