.class Lcom/android/keyguard/KeyguardRMMView$2;
.super Landroid/os/IRemoteCallback$Stub;
.source "KeyguardRMMView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardRMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRMMView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRMMView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMView$2;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView$2;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardRMMView;->access$100(Lcom/android/keyguard/KeyguardRMMView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView$2;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardRMMView;->access$100(Lcom/android/keyguard/KeyguardRMMView;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView$2;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardRMMView;->access$100(Lcom/android/keyguard/KeyguardRMMView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
