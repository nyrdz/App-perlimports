# This file is generated by Dist::Zilla::Plugin::CPANFile v6.025
# Do not edit this file directly. To change prereqs, edit the `dist.ini` file.

requires "Capture::Tiny" => "0";
requires "Class::Inspector" => "1.36";
requires "Data::Dumper" => "0";
requires "Data::UUID" => "0";
requires "File::Basename" => "0";
requires "File::XDG" => "1.01";
requires "Getopt::Long::Descriptive" => "0";
requires "List::Util" => "0";
requires "Log::Dispatch" => "2.70";
requires "Memoize" => "0";
requires "Module::Runtime" => "0";
requires "Moo" => "0";
requires "Moo::Role" => "0";
requires "MooX::StrictConstructor" => "0";
requires "PPI" => "1.276";
requires "PPI::Document" => "0";
requires "PPIx::Utils::Classification" => "0";
requires "Path::Iterator::Rule" => "0";
requires "Path::Tiny" => "0";
requires "Perl::Tidy" => "20220613";
requires "Pod::Usage" => "0";
requires "Ref::Util" => "0";
requires "Sereal::Decoder" => "0";
requires "Sereal::Encoder" => "0";
requires "Sub::HandlesVia" => "0";
requires "Symbol::Get" => "0.10";
requires "TOML::Tiny" => "0";
requires "Text::Diff" => "0";
requires "Text::SimpleTable::AutoWidth" => "0";
requires "Try::Tiny" => "0";
requires "Types::Standard" => "0";
requires "feature" => "0";
requires "perl" => "v5.18.0";
requires "strict" => "0";
requires "utf8" => "0";
requires "warnings" => "0";

on 'test' => sub {
  requires "DDP" => "0";
  requires "ExtUtils::MakeMaker" => "0";
  requires "File::Spec" => "0";
  requires "File::pushd" => "0";
  requires "Log::Dispatch::Array" => "0";
  requires "PPI::Dumper" => "0";
  requires "Sub::Exporter" => "0";
  requires "Test::Differences" => "0";
  requires "Test::Fatal" => "0";
  requires "Test::More" => "0";
  requires "Test::Needs" => "0";
  requires "Test::RequiresInternet" => "0";
  requires "Test::Script" => "1.29";
  requires "Test::Warnings" => "0";
  requires "lib" => "0";
  requires "perl" => "v5.18.0";
};

on 'test' => sub {
  recommends "CPAN::Meta" => "2.120900";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "0";
  requires "perl" => "v5.10.0";
};

on 'develop' => sub {
  requires "Code::TidyAll" => "0.71";
  requires "Code::TidyAll::Plugin::SortLines::Naturally" => "0.000003";
  requires "Code::TidyAll::Plugin::Test::Vars" => "0.04";
  requires "Code::TidyAll::Plugin::UniqueLines" => "0.000003";
  requires "Parallel::ForkManager" => "1.19";
  requires "Perl::Critic" => "1.132";
  requires "Perl::Critic::Policy::ValuesAndExpressions::ProhibitAccessOfPrivateData" => "v1.0.0";
  requires "Perl::Tidy" => "20180220";
  requires "Pod::Coverage::TrustPod" => "0";
  requires "Pod::Wordlist" => "0";
  requires "Test::CPAN::Changes" => "0.19";
  requires "Test::Code::TidyAll" => "0.50";
  requires "Test::EOL" => "0";
  requires "Test::Mojibake" => "0";
  requires "Test::More" => "0.96";
  requires "Test::Pod" => "1.41";
  requires "Test::Pod::Coverage" => "1.08";
  requires "Test::Portability::Files" => "0";
  requires "Test::Spelling" => "0.12";
  requires "Test::Vars" => "0.014";
  requires "Test::Version" => "1";
};

on 'develop' => sub {
  recommends "Dist::Zilla::PluginBundle::Git::VersionManager" => "0.007";
};
