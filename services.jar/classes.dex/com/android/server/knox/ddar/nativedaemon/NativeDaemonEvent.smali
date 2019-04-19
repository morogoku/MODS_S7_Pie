.class public Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;
.super Ljava/lang/Object;
.source "NativeDaemonEvent.java"


# static fields
.field public static final SENSITIVE_MARKER:Ljava/lang/String; = "{{sensitive}}"


# instance fields
.field private final mCmdNumber:I

.field private final mCode:I

.field private mFdList:[Ljava/io/FileDescriptor;

.field private final mLogMessage:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private mParsed:[Ljava/lang/String;

.field private final mRawEvent:Ljava/lang/String;

.field private final mResponseCode:I


# direct methods
.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mCmdNumber:I

    iput p2, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    iput p3, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mResponseCode:I

    iput-object p4, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mFdList:[Ljava/io/FileDescriptor;

    return-void
.end method

.method public static filterMessageList([Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;I)[Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1b

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getCode()I

    move-result v4

    if-ne v4, p1, :cond_18

    invoke-virtual {v3}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static isClassUnsolicited(I)Z
    .registers 2

    const/16 v0, 0x258

    if-lt p0, v0, :cond_a

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;
    .registers 19

    move-object/from16 v9, p0

    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v0, v10

    const/4 v1, 0x2

    if-lt v0, v1, :cond_ca

    const/4 v0, 0x0

    move v2, v0

    :try_start_e
    aget-object v3, v10, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v11, v3

    aget-object v3, v10, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_1b} :catch_c0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    nop

    nop

    const/4 v2, -0x1

    const/4 v5, -0x1

    invoke-static {v11}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v6

    const/4 v7, 0x3

    if-nez v6, :cond_72

    array-length v6, v10

    if-lt v6, v1, :cond_6a

    :try_start_2b
    aget-object v6, v10, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    aget-object v6, v10, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_38} :catch_60

    add-int/2addr v6, v4

    add-int/2addr v3, v6

    nop

    array-length v6, v10

    if-lt v6, v7, :cond_58

    :try_start_3e
    aget-object v6, v10, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    aget-object v1, v10, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_4b} :catch_4e

    add-int/2addr v1, v4

    add-int/2addr v3, v1

    goto :goto_72

    :catch_4e
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "problem parsing responseCode"

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Insufficient arguemnts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_60
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "problem parsing cmdNumber"

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Insufficient arguemnts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    :goto_72
    move v12, v2

    move v13, v5

    move-object v1, v9

    array-length v2, v10

    if-le v2, v7, :cond_aa

    aget-object v2, v10, v7

    const-string/jumbo v5, "{{sensitive}}"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    aget-object v2, v10, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v10, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v10, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_ab

    :cond_aa
    move-object v14, v1

    :goto_ab
    move v0, v3

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-object/from16 v1, v16

    move v2, v12

    move v3, v11

    move v4, v13

    move-object v5, v15

    move-object v6, v9

    move-object v7, v14

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V

    return-object v16

    :catch_c0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "problem parsing code"

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_ca
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Insufficient arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    const-string/jumbo v1, "unescapeArgs"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x22

    if-ne v7, v8, :cond_1b

    const/4 v6, 0x1

    add-int/lit8 v4, v4, 0x1

    :cond_1b
    :goto_1b
    if-ge v4, v3, :cond_7c

    const/16 v7, 0x20

    if-eqz v6, :cond_23

    move v9, v8

    goto :goto_24

    :cond_23
    move v9, v7

    :goto_24
    move v5, v4

    :goto_25
    if-ge v5, v3, :cond_3a

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v9, :cond_3a

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_37

    add-int/lit8 v5, v5, 0x1

    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_3a
    if-le v5, v3, :cond_3d

    move v5, v3

    :cond_3d
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v4, v11

    if-nez v6, :cond_4d

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    goto :goto_4f

    :cond_4d
    add-int/lit8 v4, v4, 0x1

    :goto_4f
    const-string v11, "\\\\"

    const-string v12, "\\"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\\""

    const-string v12, "\""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const-string v11, " \""

    invoke-virtual {p0, v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, -0x1

    if-le v11, v12, :cond_75

    if-gt v11, v7, :cond_75

    const/4 v6, 0x1

    add-int/lit8 v4, v11, 0x2

    goto :goto_7b

    :cond_75
    const/4 v6, 0x0

    if-le v7, v12, :cond_7b

    add-int/lit8 v7, v7, 0x1

    move v4, v7

    :cond_7b
    :goto_7b
    goto :goto_1b

    :cond_7c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method


# virtual methods
.method public checkCode(I)V
    .registers 5

    iget v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCmdNumber()I
    .registers 2

    iget v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mCmdNumber:I

    return v0
.end method

.method public getCode()I
    .registers 2

    iget v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    return v0
.end method

.method public getField(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    :cond_c
    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_15

    const/4 v0, 0x0

    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getFileDescriptors()[Ljava/io/FileDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mFdList:[Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRawEvent()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    iget v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mResponseCode:I

    return v0
.end method

.method public isClassClientError()Z
    .registers 3

    iget v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isClassContinue()Z
    .registers 3

    iget v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isClassOk()Z
    .registers 3

    iget v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isClassServerError()Z
    .registers 3

    iget v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isClassUnsolicited()Z
    .registers 2

    iget v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    invoke-static {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    return-object v0
.end method
