.class public Lcom/samsung/android/sdk/bixby2/util/BixbyUtils;
.super Ljava/lang/Object;
.source "BixbyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBixbyContextInfo(Landroid/os/Bundle;)Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;
    .locals 3

    const-string v0, "contextInfo"

    const-string v1, "contextInfo"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;

    invoke-direct {v2, v1}, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;-><init>(Landroid/os/Bundle;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v2, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;

    invoke-direct {v2}, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;-><init>()V

    return-object v2
.end method
