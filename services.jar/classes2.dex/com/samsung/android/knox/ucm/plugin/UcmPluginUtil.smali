.class public Lcom/samsung/android/knox/ucm/plugin/UcmPluginUtil;
.super Ljava/lang/Object;
.source "UcmPluginUtil.java"


# static fields
.field public static final UCM_VERSION_1:Ljava/lang/String; = "v1"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUCMVersion()Ljava/lang/String;
    .registers 1

    const-string/jumbo v0, "v1"

    return-object v0
.end method
