.class Lcom/android/keyguard/KeyguardKnoxGuardView$2;
.super Landroid/os/Handler;
.source "KeyguardKnoxGuardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardKnoxGuardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$300(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$200(Lcom/android/keyguard/KeyguardKnoxGuardView;I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
