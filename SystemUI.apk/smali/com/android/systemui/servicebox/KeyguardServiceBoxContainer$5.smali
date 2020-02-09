.class Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardServiceBoxContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "KeyguardServiceBoxContainer"

    const-string v3, "Go to the clock page due to unlocking"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    const-string/jumbo v3, "servicebox_clock"

    invoke-static {v2, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2200(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2000(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2002(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$300(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    :cond_2
    return-void
.end method
