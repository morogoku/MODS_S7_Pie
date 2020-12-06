.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$1;
.super Landroid/content/BroadcastReceiver;
.source "MinimizeContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "MinimizeContainer"

    const-string v1, "[Service] onReceive: ACTION_USER_SWITCHED, Rebuild all"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->access$000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;I)V

    return-void
.end method
