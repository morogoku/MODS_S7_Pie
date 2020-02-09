.class Lcom/android/systemui/popup/PopupUI$1;
.super Landroid/content/BroadcastReceiver;
.source "PopupUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/popup/PopupUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/PopupUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/popup/PopupUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {v1}, Lcom/android/systemui/popup/PopupUI;->access$000(Lcom/android/systemui/popup/PopupUI;)Lcom/android/systemui/popup/util/PopupUILogWrapper;

    move-result-object v1

    const-string v2, "PopupUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PopupUIReceiver.onReceive() action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const v3, -0x1808c879

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {v1}, Lcom/android/systemui/popup/PopupUI;->access$100(Lcom/android/systemui/popup/PopupUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;

    invoke-interface {v2, p2}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;->show(Landroid/content/Intent;)V

    goto :goto_2

    :cond_2
    const-string v1, "displayId"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/util/DeviceState;->isValidDisplay(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {v2}, Lcom/android/systemui/popup/PopupUI;->access$100(Lcom/android/systemui/popup/PopupUI;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;

    invoke-interface {v3}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;->dismiss()V

    goto :goto_3

    :cond_3
    return-void
.end method
