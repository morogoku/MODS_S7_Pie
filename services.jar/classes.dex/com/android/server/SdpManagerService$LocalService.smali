.class final Lcom/android/server/SdpManagerService$LocalService;
.super Lcom/android/server/sdp/SdpManagerInternal;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/SdpManagerService$LocalService;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Lcom/android/server/sdp/SdpManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$LocalService;-><init>(Lcom/android/server/SdpManagerService;)V

    return-void
.end method


# virtual methods
.method public setSdpPolicy(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/SdpManagerService$LocalService;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$7200(Lcom/android/server/SdpManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/EnterprisePartitionManager;->setSdpPolicy(I)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "setSdpPolicy failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1a
    const/4 v1, 0x1

    return v1
.end method
