.class public Lcom/android/server/asks/ADPOperation;
.super Ljava/lang/Object;
.source "ADPOperation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AASA_ADPOperation_ADP"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkContainsList(Ljava/util/ArrayList;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    invoke-static {v1, p1}, Lcom/android/server/asks/ADPOperation;->isAbsolutelyEqual(Lcom/android/server/asks/ADPContainer$ADPPolicy;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    goto :goto_4

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static copyADPPolicy(Lcom/android/server/asks/ADPContainer$ADPPolicy;)Lcom/android/server/asks/ADPContainer$ADPPolicy;
    .registers 4

    new-instance v0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    invoke-direct {v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_pattern(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_hashCode(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_versionType(I)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_format(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    invoke-virtual {v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->createADPPolicy()Lcom/android/server/asks/ADPContainer$ADPPolicy;

    move-result-object v1

    return-object v1
.end method

.method public static filterADPPolicy(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/asks/-$$Lambda$ADPOperation$qwzPpiQxrmnDKxWPcAMFM9Wvw-w;->INSTANCE:Lcom/android/server/asks/-$$Lambda$ADPOperation$qwzPpiQxrmnDKxWPcAMFM9Wvw-w;

    sget-object v3, Lcom/android/server/asks/-$$Lambda$QUF8onbyeRS02cAU5ynoVemHR6I;->INSTANCE:Lcom/android/server/asks/-$$Lambda$QUF8onbyeRS02cAU5ynoVemHR6I;

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Predicate;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static filterADPPolicy(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    :goto_10
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-gt v2, v3, :cond_20

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method private static getRegexFromVType(I)Ljava/util/regex/Pattern;
    .registers 3

    const-string v0, ""

    if-eqz p0, :cond_14

    const/4 v1, 0x5

    if-eq p0, v1, :cond_11

    packed-switch p0, :pswitch_data_1c

    goto :goto_17

    :pswitch_b
    const-string v0, "^(\\d?\\d{4})\\d{2}(\\d{3})\\z"

    goto :goto_17

    :pswitch_e
    const-string v0, "^(\\d?\\d{6})\\d{3}\\z"

    goto :goto_17

    :cond_11
    const-string v0, "^(\\d?\\d{9})\\z"

    goto :goto_17

    :cond_14
    const-string v0, "^(\\d?\\d{4})\\d{5}\\z"

    nop

    :goto_17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    return-object v1

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method private static isAbsolutelyEqual(Lcom/android/server/asks/ADPContainer$ADPPolicy;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/asks/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/asks/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v2

    if-eq v0, v2, :cond_2a

    return v1

    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/asks/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    return v1

    :cond_39
    const/4 v0, 0x1

    return v0
.end method

.method public static isEqual(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Lcom/android/server/asks/ADPOperation;->getRegexFromVType(I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/asks/ADPOperation;->isEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, p2}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_10

    nop

    nop

    if-ne v1, v2, :cond_f

    const/4 v0, 0x1

    nop

    :cond_f
    return v0

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v0
.end method

.method public static isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static isGreater(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Lcom/android/server/asks/ADPOperation;->getRegexFromVType(I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/asks/ADPOperation;->isGreater(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isGreater(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, p2}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_10

    nop

    nop

    if-le v1, v2, :cond_f

    const/4 v0, 0x1

    nop

    :cond_f
    return v0

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v0
.end method

.method public static isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Lcom/android/server/asks/ADPOperation;->getRegexFromVType(I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isGreaterOrEqual(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v1

    const v2, 0x65837583

    if-ne v1, v2, :cond_23

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v0, 0x0

    goto :goto_2f

    :cond_12
    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2f

    :cond_23
    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_2f
    return v0
.end method

.method public static isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, p2}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_10

    nop

    nop

    if-lt v1, v2, :cond_f

    const/4 v0, 0x1

    nop

    :cond_f
    return v0

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v0
.end method

.method public static isMatchPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    return v2
.end method

.method public static isSameCategoryByHashCode(Ljava/lang/String;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/asks/-$$Lambda$ADPOperation$1G5yPuPS8ilQHG0z2FdmUA-dMRE;

    invoke-direct {v0, p0}, Lcom/android/server/asks/-$$Lambda$ADPOperation$1G5yPuPS8ilQHG0z2FdmUA-dMRE;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isSameCategoryByPattern(Ljava/lang/String;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/asks/-$$Lambda$ADPOperation$v4e4-7giXOPjSg-jOBPNPYVGqsY;

    invoke-direct {v0, p0}, Lcom/android/server/asks/-$$Lambda$ADPOperation$v4e4-7giXOPjSg-jOBPNPYVGqsY;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$filterADPPolicy$2(Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$isSameCategoryByHashCode$0(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 3

    invoke-virtual {p1, p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->findMatcherByHashCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isSameCategoryByPattern$1(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 3

    invoke-virtual {p1, p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->findMatcherByPattern(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static printADPContainer(Lcom/android/server/asks/ADPContainer;)V
    .registers 4

    const-string v0, "AASA_ADPOperation_ADP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[+] HASHVALUE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    invoke-static {v1}, Lcom/android/server/asks/ADPOperation;->printADPPolicy(Lcom/android/server/asks/ADPContainer$ADPPolicy;)V

    goto :goto_22

    :cond_32
    return-void
.end method

.method public static printADPPolicy(Lcom/android/server/asks/ADPContainer$ADPPolicy;)V
    .registers 4

    const-string v0, "AASA_ADPOperation_ADP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tpattern = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AASA_ADPOperation_ADP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  hashCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AASA_ADPOperation_ADP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  versionType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    const-string v0, "AASA_ADPOperation_ADP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    return-void
.end method

.method public static printDebug(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/ADPContainer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AASA_ADPOperation_ADP"

    const-string/jumbo v1, "print adp container"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/asks/ADPContainer;

    invoke-static {v3}, Lcom/android/server/asks/ADPOperation;->printADPContainer(Lcom/android/server/asks/ADPContainer;)V

    goto :goto_10

    :cond_26
    return-void
.end method

.method public static removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_1f
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v4, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    :goto_35
    goto :goto_9

    :cond_36
    return-object v0
.end method
