.class public Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;
.super Ljava/lang/Object;
.source "ExecStringCrypto.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExecStringCrypto"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDecryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    const/4 v0, 0x0

    const-string v1, "dataType"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    const-string v3, "decryptData"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string v5, "decryptResult"

    invoke-static {v3}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->decryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    :cond_20
    goto :goto_37

    :cond_21
    const-string v3, "decryptData"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string v5, "decryptResult"

    invoke-static {v3}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->decryption([B)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    :cond_37
    :goto_37
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v2

    nop

    :cond_3e
    return-object v2
.end method

.method private getDecryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dataType"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    const-string v2, "decryptMultipleData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_28

    new-instance v4, Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecStringCrypto$K-1VKP37u28LcOyHOwaDhMPJZVs;

    invoke-direct {v4, v3}, Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecStringCrypto$K-1VKP37u28LcOyHOwaDhMPJZVs;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const-string v4, "decryptMultipleResult"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_28
    goto :goto_50

    :cond_29
    const-string v2, "decryptMultipleData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, "paramList0"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->mergeEncryptedData([BLjava/util/ArrayList;Z)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_50

    const-string v5, "decryptMultipleResult"

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [B

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v5, "paramList1"

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_50
    :goto_50
    return-object v0
.end method

.method private getEncryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    const/4 v0, 0x0

    const-string v1, "dataType"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    const-string v3, "encryptData"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string v5, "encryptResult"

    invoke-static {v3}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->encryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    :cond_20
    goto :goto_37

    :cond_21
    const-string v3, "encryptData"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string v5, "encryptResult"

    invoke-static {v3}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->encryption([B)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    :cond_37
    :goto_37
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v2

    nop

    :cond_3e
    return-object v2
.end method

.method private getEncryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dataType"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    const-string v2, "encryptMultipleData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_28

    new-instance v4, Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecStringCrypto$Zw4mhVVAOGfDGeLTrVpTc0koK2U;

    invoke-direct {v4, v3}, Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecStringCrypto$Zw4mhVVAOGfDGeLTrVpTc0koK2U;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const-string v4, "encryptMultipleResult"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_28
    goto :goto_50

    :cond_29
    const-string v2, "encryptMultipleData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, "paramList0"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->mergeEncryptedData([BLjava/util/ArrayList;Z)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_50

    const-string v5, "encryptMultipleResult"

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [B

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v5, "paramList1"

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_50
    :goto_50
    return-object v0
.end method

.method static synthetic lambda$getDecryptedMultipleData$1(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->decryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$getEncryptedMultipleData$0(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->encryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private mergeEncryptedData([BLjava/util/ArrayList;Z)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_85

    if-eqz p2, :cond_85

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_13

    goto/16 :goto_85

    :cond_13
    :try_start_13
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v6, v5

    invoke-static {p1, v3, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    if-eqz p3, :cond_39

    invoke-static {v7}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->encryption([B)[B

    move-result-object v8

    goto :goto_3d

    :cond_39
    invoke-static {v7}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->decryption([B)[B

    move-result-object v8

    :goto_3d
    if-nez v8, :cond_66

    const-string v4, "ExecStringCrypto"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mergeEncryptedData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_51

    const-string v10, "en"

    goto :goto_53

    :cond_51
    const-string v10, "de"

    :goto_53
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "crypt failed !!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v9, v10}, Lcom/android/server/sepunion/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-object v1

    :cond_66
    array-length v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/2addr v3, v6

    goto :goto_1d

    :cond_73
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_77} :catch_80

    move-object v1, v4

    nop

    nop

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :catch_80
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    return-object v1

    :cond_85
    :goto_85
    return-object v1
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 7

    const-string v0, "ExecStringCrypto"

    const-string v1, "ActionSecurityUtil"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_24

    sparse-switch p3, :sswitch_data_26

    goto :goto_24

    :sswitch_10
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->getDecryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :sswitch_15
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->getEncryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :sswitch_1a
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->getDecryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :sswitch_1f
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->getEncryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_24
    :goto_24
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_26
    .sparse-switch
        0x120003 -> :sswitch_1f
        0x120004 -> :sswitch_1a
        0x120010 -> :sswitch_15
        0x120011 -> :sswitch_10
    .end sparse-switch
.end method
