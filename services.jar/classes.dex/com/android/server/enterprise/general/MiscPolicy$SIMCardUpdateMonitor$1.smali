.class Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v2, v2, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # invokes: Lcom/android/server/enterprise/general/MiscPolicy;->updateSystemUIMonitor(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->access$100(Lcom/android/server/enterprise/general/MiscPolicy;I)V

    :cond_1a
    return-void
.end method
