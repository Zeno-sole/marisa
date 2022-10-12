# This file was automatically generated by SWIG (http://www.swig.org).
# Version 1.3.40
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package marisa;
use base qw(Exporter);
use base qw(DynaLoader);
package marisac;
bootstrap marisa;
package marisa;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package marisa;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package marisa;


############# Class : marisa::Key ##############

package marisa::Key;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( marisa );
%OWNER = ();
%ITERATORS = ();
*str = *marisac::Key_str;
*id = *marisac::Key_id;
*weight = *marisac::Key_weight;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        marisac::delete_Key($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : marisa::Query ##############

package marisa::Query;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( marisa );
%OWNER = ();
%ITERATORS = ();
*str = *marisac::Query_str;
*id = *marisac::Query_id;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        marisac::delete_Query($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : marisa::Keyset ##############

package marisa::Keyset;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( marisa );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = marisac::new_Keyset(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        marisac::delete_Keyset($self);
        delete $OWNER{$self};
    }
}

*push_back = *marisac::Keyset_push_back;
*key = *marisac::Keyset_key;
*key_str = *marisac::Keyset_key_str;
*key_id = *marisac::Keyset_key_id;
*num_keys = *marisac::Keyset_num_keys;
*empty = *marisac::Keyset_empty;
*size = *marisac::Keyset_size;
*total_length = *marisac::Keyset_total_length;
*reset = *marisac::Keyset_reset;
*clear = *marisac::Keyset_clear;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : marisa::Agent ##############

package marisa::Agent;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( marisa );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = marisac::new_Agent(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        marisac::delete_Agent($self);
        delete $OWNER{$self};
    }
}

*set_query = *marisac::Agent_set_query;
*key = *marisac::Agent_key;
*query = *marisac::Agent_query;
*key_str = *marisac::Agent_key_str;
*key_id = *marisac::Agent_key_id;
*query_str = *marisac::Agent_query_str;
*query_id = *marisac::Agent_query_id;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : marisa::Trie ##############

package marisa::Trie;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( marisa );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = marisac::new_Trie(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        marisac::delete_Trie($self);
        delete $OWNER{$self};
    }
}

*build = *marisac::Trie_build;
*mmap = *marisac::Trie_mmap;
*load = *marisac::Trie_load;
*save = *marisac::Trie_save;
*common_prefix_search = *marisac::Trie_common_prefix_search;
*predictive_search = *marisac::Trie_predictive_search;
*lookup = *marisac::Trie_lookup;
*reverse_lookup = *marisac::Trie_reverse_lookup;
*num_tries = *marisac::Trie_num_tries;
*num_keys = *marisac::Trie_num_keys;
*num_nodes = *marisac::Trie_num_nodes;
*tail_mode = *marisac::Trie_tail_mode;
*node_order = *marisac::Trie_node_order;
*empty = *marisac::Trie_empty;
*size = *marisac::Trie_size;
*total_size = *marisac::Trie_total_size;
*io_size = *marisac::Trie_io_size;
*clear = *marisac::Trie_clear;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package marisa;

*OK = *marisac::OK;
*STATE_ERROR = *marisac::STATE_ERROR;
*NULL_ERROR = *marisac::NULL_ERROR;
*BOUND_ERROR = *marisac::BOUND_ERROR;
*RANGE_ERROR = *marisac::RANGE_ERROR;
*CODE_ERROR = *marisac::CODE_ERROR;
*RESET_ERROR = *marisac::RESET_ERROR;
*SIZE_ERROR = *marisac::SIZE_ERROR;
*MEMORY_ERROR = *marisac::MEMORY_ERROR;
*IO_ERROR = *marisac::IO_ERROR;
*FORMAT_ERROR = *marisac::FORMAT_ERROR;
*MIN_NUM_TRIES = *marisac::MIN_NUM_TRIES;
*MAX_NUM_TRIES = *marisac::MAX_NUM_TRIES;
*DEFAULT_NUM_TRIES = *marisac::DEFAULT_NUM_TRIES;
*HUGE_CACHE = *marisac::HUGE_CACHE;
*LARGE_CACHE = *marisac::LARGE_CACHE;
*NORMAL_CACHE = *marisac::NORMAL_CACHE;
*SMALL_CACHE = *marisac::SMALL_CACHE;
*TINY_CACHE = *marisac::TINY_CACHE;
*DEFAULT_CACHE = *marisac::DEFAULT_CACHE;
*TEXT_TAIL = *marisac::TEXT_TAIL;
*BINARY_TAIL = *marisac::BINARY_TAIL;
*DEFAULT_TAIL = *marisac::DEFAULT_TAIL;
*LABEL_ORDER = *marisac::LABEL_ORDER;
*WEIGHT_ORDER = *marisac::WEIGHT_ORDER;
*DEFAULT_ORDER = *marisac::DEFAULT_ORDER;
*INVALID_KEY_ID = *marisac::INVALID_KEY_ID;
1;
