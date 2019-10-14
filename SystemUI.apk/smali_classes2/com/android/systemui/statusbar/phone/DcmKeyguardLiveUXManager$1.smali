.class Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$1;
.super Landroid/os/Handler;
.source "DcmKeyguardLiveUXManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x16b3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->access$000(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;Z)V

    nop

    :goto_0
    return-void
.end method
