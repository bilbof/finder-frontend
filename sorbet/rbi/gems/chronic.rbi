# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/chronic/all/chronic.rbi
#
# chronic-0.10.2
module Chronic
  def self.construct(year, month = nil, day = nil, hour = nil, minute = nil, second = nil, offset = nil); end
  def self.debug; end
  def self.debug=(arg0); end
  def self.parse(text, options = nil); end
  def self.time_class; end
  def self.time_class=(arg0); end
end
module Chronic::Handlers
  def day_or_time(day_start, time_tokens, options); end
  def dealias_and_disambiguate_times(tokens, options); end
  def find_within(tags, span, pointer); end
  def get_anchor(tokens, options); end
  def get_repeaters(tokens); end
  def handle_generic(tokens, options); end
  def handle_m_d(month, day, time_tokens, options); end
  def handle_o_r_g_r(tokens, options); end
  def handle_o_r_s_r(tokens, options); end
  def handle_od_rm(tokens, options); end
  def handle_od_rmn(tokens, options); end
  def handle_od_rmn_sy(tokens, options); end
  def handle_orr(tokens, outer_span, options); end
  def handle_p_s_r(tokens, options); end
  def handle_r(tokens, options); end
  def handle_r_g_r(tokens, options); end
  def handle_rdn_od(tokens, options); end
  def handle_rdn_rmn_od(tokens, options); end
  def handle_rdn_rmn_od_sy(tokens, options); end
  def handle_rdn_rmn_sd(tokens, options); end
  def handle_rdn_rmn_sd_sy(tokens, options); end
  def handle_rmn_od(tokens, options); end
  def handle_rmn_od_on(tokens, options); end
  def handle_rmn_od_sy(tokens, options); end
  def handle_rmn_sd(tokens, options); end
  def handle_rmn_sd_on(tokens, options); end
  def handle_rmn_sd_sy(tokens, options); end
  def handle_rmn_sy(tokens, options); end
  def handle_s_r_a_s_r_p_a(tokens, options); end
  def handle_s_r_p(tokens, options); end
  def handle_s_r_p_a(tokens, options); end
  def handle_sd_rmn(tokens, options); end
  def handle_sd_rmn_sy(tokens, options); end
  def handle_sd_sm(tokens, options); end
  def handle_sd_sm_sy(tokens, options); end
  def handle_sm_rmn_sy(tokens, options); end
  def handle_sm_sd(tokens, options); end
  def handle_sm_sd_sy(tokens, options); end
  def handle_sm_sy(tokens, options); end
  def handle_srp(tokens, span, options); end
  def handle_sy_rmn_od(tokens, options); end
  def handle_sy_sm(tokens, options); end
  def handle_sy_sm_sd(tokens, options); end
  def handle_year_and_month(year, month); end
  def month_overflow?(year, month, day); end
  def self.day_or_time(day_start, time_tokens, options); end
  def self.dealias_and_disambiguate_times(tokens, options); end
  def self.find_within(tags, span, pointer); end
  def self.get_anchor(tokens, options); end
  def self.get_repeaters(tokens); end
  def self.handle_generic(tokens, options); end
  def self.handle_m_d(month, day, time_tokens, options); end
  def self.handle_o_r_g_r(tokens, options); end
  def self.handle_o_r_s_r(tokens, options); end
  def self.handle_od_rm(tokens, options); end
  def self.handle_od_rmn(tokens, options); end
  def self.handle_od_rmn_sy(tokens, options); end
  def self.handle_orr(tokens, outer_span, options); end
  def self.handle_p_s_r(tokens, options); end
  def self.handle_r(tokens, options); end
  def self.handle_r_g_r(tokens, options); end
  def self.handle_rdn_od(tokens, options); end
  def self.handle_rdn_rmn_od(tokens, options); end
  def self.handle_rdn_rmn_od_sy(tokens, options); end
  def self.handle_rdn_rmn_sd(tokens, options); end
  def self.handle_rdn_rmn_sd_sy(tokens, options); end
  def self.handle_rmn_od(tokens, options); end
  def self.handle_rmn_od_on(tokens, options); end
  def self.handle_rmn_od_sy(tokens, options); end
  def self.handle_rmn_sd(tokens, options); end
  def self.handle_rmn_sd_on(tokens, options); end
  def self.handle_rmn_sd_sy(tokens, options); end
  def self.handle_rmn_sy(tokens, options); end
  def self.handle_s_r_a_s_r_p_a(tokens, options); end
  def self.handle_s_r_p(tokens, options); end
  def self.handle_s_r_p_a(tokens, options); end
  def self.handle_sd_rmn(tokens, options); end
  def self.handle_sd_rmn_sy(tokens, options); end
  def self.handle_sd_sm(tokens, options); end
  def self.handle_sd_sm_sy(tokens, options); end
  def self.handle_sm_rmn_sy(tokens, options); end
  def self.handle_sm_sd(tokens, options); end
  def self.handle_sm_sd_sy(tokens, options); end
  def self.handle_sm_sy(tokens, options); end
  def self.handle_srp(tokens, span, options); end
  def self.handle_sy_rmn_od(tokens, options); end
  def self.handle_sy_sm(tokens, options); end
  def self.handle_sy_sm_sd(tokens, options); end
  def self.handle_year_and_month(year, month); end
  def self.month_overflow?(year, month, day); end
  def self.time_with_rollover(year, month, day); end
  def time_with_rollover(year, month, day); end
end
class Chronic::Parser
  def definitions(options = nil); end
  def guess(span, mode = nil); end
  def initialize(options = nil); end
  def now; end
  def now=(arg0); end
  def options; end
  def parse(text); end
  def pre_normalize(text); end
  def tokenize(text, options); end
  def tokens_to_span(tokens, options); end
  include Chronic::Handlers
end
class Chronic::Date
  def self.could_be_day?(day); end
  def self.could_be_month?(month); end
  def self.could_be_year?(year); end
  def self.make_year(year, bias); end
  def self.month_overflow?(year, month, day); end
end
class Chronic::Time
  def self.could_be_hour?(hour); end
  def self.could_be_minute?(minute); end
  def self.could_be_second?(second); end
  def self.could_be_subsecond?(subsecond); end
  def self.normalize_offset(offset); end
end
class Chronic::Handler
  def ==(other); end
  def handler_method; end
  def initialize(pattern, handler_method); end
  def invoke(type, tokens, parser, options); end
  def match(tokens, definitions); end
  def pattern; end
  def tags_match?(name, tokens, token_index); end
end
class Chronic::MiniDate
  def day; end
  def day=(arg0); end
  def equals?(other); end
  def initialize(month, day); end
  def is_between?(md_start, md_end); end
  def month; end
  def month=(arg0); end
  def self.from_time(time); end
end
class Chronic::Tag
  def initialize(type, options = nil); end
  def self.scan_for(token, klass, items = nil, options = nil); end
  def start=(time); end
  def type; end
  def type=(arg0); end
end
class Chronic::Span < Range
  def +(seconds); end
  def -(seconds); end
  def to_s; end
  def width; end
end
class Chronic::Token
  def get_tag(tag_class); end
  def initialize(word); end
  def inspect; end
  def tag(new_tag); end
  def tagged?; end
  def tags; end
  def tags=(arg0); end
  def to_s; end
  def untag(tag_class); end
  def word; end
  def word=(arg0); end
end
class Chronic::Grabber < Chronic::Tag
  def self.scan(tokens, options); end
  def self.scan_for_all(token); end
  def to_s; end
end
class Chronic::Pointer < Chronic::Tag
  def self.scan(tokens, options); end
  def self.scan_for_all(token); end
  def to_s; end
end
class Chronic::Scalar < Chronic::Tag
  def self.scan(tokens, options); end
  def to_s; end
end
class Chronic::ScalarSubsecond < Chronic::Scalar
  def to_s; end
end
class Chronic::ScalarSecond < Chronic::Scalar
  def to_s; end
end
class Chronic::ScalarMinute < Chronic::Scalar
  def to_s; end
end
class Chronic::ScalarHour < Chronic::Scalar
  def to_s; end
end
class Chronic::ScalarDay < Chronic::Scalar
  def to_s; end
end
class Chronic::ScalarMonth < Chronic::Scalar
  def to_s; end
end
class Chronic::ScalarYear < Chronic::Scalar
  def to_s; end
end
class Chronic::Ordinal < Chronic::Tag
  def self.scan(tokens, options); end
  def to_s; end
end
class Chronic::OrdinalDay < Chronic::Ordinal
  def to_s; end
end
class Chronic::OrdinalMonth < Chronic::Ordinal
  def to_s; end
end
class Chronic::OrdinalYear < Chronic::Ordinal
  def to_s; end
end
class Chronic::Separator < Chronic::Tag
  def self.scan(tokens, options); end
  def self.scan_for_and(token); end
  def self.scan_for_at(token); end
  def self.scan_for_colon(token); end
  def self.scan_for_commas(token); end
  def self.scan_for_dash(token); end
  def self.scan_for_dots(token); end
  def self.scan_for_in(token); end
  def self.scan_for_on(token); end
  def self.scan_for_quote(token); end
  def self.scan_for_slash(token); end
  def self.scan_for_space(token); end
  def self.scan_for_t(token); end
  def self.scan_for_w(token); end
  def to_s; end
end
class Chronic::SeparatorComma < Chronic::Separator
  def to_s; end
end
class Chronic::SeparatorDot < Chronic::Separator
  def to_s; end
end
class Chronic::SeparatorColon < Chronic::Separator
  def to_s; end
end
class Chronic::SeparatorSpace < Chronic::Separator
  def to_s; end
end
class Chronic::SeparatorSlash < Chronic::Separator
  def to_s; end
end
class Chronic::SeparatorDash < Chronic::Separator
  def to_s; end
end
class Chronic::SeparatorQuote < Chronic::Separator
  def to_s; end
end
class Chronic::SeparatorAt < Chronic::Separator
  def to_s; end
end
class Chronic::SeparatorIn < Chronic::Separator
  def to_s; end
end
class Chronic::SeparatorOn < Chronic::Separator
  def to_s; end
end
class Chronic::SeparatorAnd < Chronic::Separator
  def to_s; end
end
class Chronic::SeparatorT < Chronic::Separator
  def to_s; end
end
class Chronic::SeparatorW < Chronic::Separator
  def to_s; end
end
class Chronic::Sign < Chronic::Tag
  def self.scan(tokens, options); end
  def self.scan_for_minus(token); end
  def self.scan_for_plus(token); end
  def to_s; end
end
class Chronic::SignPlus < Chronic::Sign
  def to_s; end
end
class Chronic::SignMinus < Chronic::Sign
  def to_s; end
end
class Chronic::TimeZone < Chronic::Tag
  def self.scan(tokens, options); end
  def self.scan_for_all(token); end
  def to_s; end
end
class Chronic::Numerizer
  def self.andition(string); end
  def self.numerize(string); end
end
class Chronic::Season
  def end; end
  def initialize(start_date, end_date); end
  def self.find_next_season(season, pointer); end
  def self.season_after(season); end
  def self.season_before(season); end
  def start; end
end
class Chronic::Repeater < Chronic::Tag
  def <=>(other); end
  def next(pointer); end
  def self.scan(tokens, options); end
  def self.scan_for_day_names(token, options = nil); end
  def self.scan_for_day_portions(token, options = nil); end
  def self.scan_for_month_names(token, options = nil); end
  def self.scan_for_season_names(token, options = nil); end
  def self.scan_for_times(token, options = nil); end
  def self.scan_for_units(token, options = nil); end
  def this(pointer); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterYear < Chronic::Repeater
  def build_offset_time(time, amount, direction); end
  def initialize(type, options = nil); end
  def month_days(year, month); end
  def next(pointer); end
  def offset(span, amount, pointer); end
  def this(pointer = nil); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterSeason < Chronic::Repeater
  def construct_season(start, finish); end
  def find_current_season(md); end
  def find_next_season_span(direction, next_season); end
  def initialize(type, options = nil); end
  def next(pointer); end
  def num_seconds_til(goal, direction); end
  def num_seconds_til_end(season_symbol, direction); end
  def num_seconds_til_start(season_symbol, direction); end
  def offset(span, amount, pointer); end
  def offset_by(time, amount, pointer); end
  def this(pointer = nil); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterSeasonName < Chronic::RepeaterSeason
  def next(pointer); end
  def offset(span, amount, pointer); end
  def offset_by(time, amount, pointer); end
  def this(pointer = nil); end
end
class Chronic::RepeaterMonth < Chronic::Repeater
  def initialize(type, options = nil); end
  def month_days(year, month); end
  def next(pointer); end
  def offset(span, amount, pointer); end
  def offset_by(time, amount, pointer); end
  def this(pointer = nil); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterMonthName < Chronic::Repeater
  def index; end
  def initialize(type, options = nil); end
  def next(pointer); end
  def this(pointer = nil); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterFortnight < Chronic::Repeater
  def initialize(type, options = nil); end
  def next(pointer); end
  def offset(span, amount, pointer); end
  def this(pointer = nil); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterWeek < Chronic::Repeater
  def initialize(type, options = nil); end
  def next(pointer); end
  def offset(span, amount, pointer); end
  def this(pointer = nil); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterWeekend < Chronic::Repeater
  def initialize(type, options = nil); end
  def next(pointer); end
  def offset(span, amount, pointer); end
  def this(pointer = nil); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterWeekday < Chronic::Repeater
  def initialize(type, options = nil); end
  def is_weekday?(day); end
  def is_weekend?(day); end
  def next(pointer); end
  def offset(span, amount, pointer); end
  def symbol_to_number(sym); end
  def this(pointer = nil); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterDay < Chronic::Repeater
  def initialize(type, options = nil); end
  def next(pointer); end
  def offset(span, amount, pointer); end
  def this(pointer = nil); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterDayName < Chronic::Repeater
  def initialize(type, options = nil); end
  def next(pointer); end
  def symbol_to_number(sym); end
  def this(pointer = nil); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterDayPortion < Chronic::Repeater
  def construct_date_from_reference_and_offset(reference, offset = nil); end
  def initialize(type, options = nil); end
  def next(pointer); end
  def offset(span, amount, pointer); end
  def this(context = nil); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterHour < Chronic::Repeater
  def initialize(type, options = nil); end
  def next(pointer); end
  def offset(span, amount, pointer); end
  def this(pointer = nil); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterMinute < Chronic::Repeater
  def initialize(type, options = nil); end
  def next(pointer = nil); end
  def offset(span, amount, pointer); end
  def this(pointer = nil); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterSecond < Chronic::Repeater
  def initialize(type, options = nil); end
  def next(pointer = nil); end
  def offset(span, amount, pointer); end
  def this(pointer = nil); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterTime < Chronic::Repeater
  def initialize(time, options = nil); end
  def next(pointer); end
  def this(context = nil); end
  def to_s; end
  def width; end
end
class Chronic::RepeaterTime::Tick
  def *(other); end
  def ambiguous?; end
  def initialize(time, ambiguous = nil); end
  def time; end
  def time=(arg0); end
  def to_f; end
  def to_s; end
end
