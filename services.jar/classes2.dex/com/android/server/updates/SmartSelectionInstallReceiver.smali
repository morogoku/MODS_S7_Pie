.class public Lcom/android/server/updates/SmartSelectionInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "SmartSelectionInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "/data/misc/textclassifier/"

    const-string/jumbo v1, "textclassifier.model"

    const-string/jumbo v2, "metadata/classification"

    const-string/jumbo v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected verifyVersion(II)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method