OLD_CWD=${PWD}
function cwdSetUp(){
    ORIGIN_CWD=$(TMPDIR=/tmp mktemp -d -t groot-cwd.XXXXXXXXXX)
    cd $ORIGIN_CWD
}

function cwdTearDown(){
    rm -rf $ORIGIN_CWD
    cd $OLD_CWD
}

function setUpUnitTests(){
    OUTPUT_DIR="${SHUNIT_TMPDIR}/output"
    mkdir "${OUTPUT_DIR}"
    STDOUTF="${OUTPUT_DIR}/stdout"
    STDERRF="${OUTPUT_DIR}/stderr"
}

function assertCommandSuccess(){
    $(set -e
      "$@" > $STDOUTF 2> $STDERRF
    )
    assertTrue "The command $1 did not return 0 exit status" $?
}

function assertCommandFail(){
    $(set -e
      "$@" > $STDOUTF 2> $STDERRF
    )
    assertFalse "The command $1 returned 0 exit status" $?
}

# $1: expected exit status
# $2-: The command under test
function assertCommandFailOnStatus(){
    local status=$1
    shift
    $(set -e
      "$@" > $STDOUTF 2> $STDERRF
    )
    assertEquals $status $?
}
