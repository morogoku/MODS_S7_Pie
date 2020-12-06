.class Lcom/android/server/net/MdoCore$3;
.super Landroid/content/BroadcastReceiver;
.source "MdoCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MdoCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MdoCore;


# direct methods
.method constructor <init>(Lcom/android/server/net/MdoCore;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/MdoCore$3;->this$0:Lcom/android/server/net/MdoCore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_a

    return-void

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UID_REMOVED for uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/MdoCore$3;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/android/server/net/MdoCore;->access$300(Lcom/android/server/net/MdoCore;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/net/MdoCore$3;->this$0:Lcom/android/server/net/MdoCore;

    invoke-virtual {v1, v2, v0, v2}, Lcom/android/server/net/MdoCore;->setUrspRule(ZIZ)V

    :cond_30
    iget-object v1, p0, Lcom/android/server/net/MdoCore$3;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mMdoBlackListUidRule:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/android/server/net/MdoCore;->access$400(Lcom/android/server/net/MdoCore;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/net/MdoCore$3;->this$0:Lcom/android/server/net/MdoCore;

    invoke-virtual {v1, v2, v0, v2}, Lcom/android/server/net/MdoCore;->setUrspBlackListUidRule(ZIZ)V

    :cond_41
    return-void
.end method
