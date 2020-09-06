.class Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;
.super Landroid/os/Handler;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungPolicyHandler"
.end annotation


# static fields
.field private static final MSG_ENDCALL_DELAYED_PRESS:I = 0x3

.field private static final MSG_RECONFIGURE_DEFAULT_DISPLAY:I = 0x2

.field private static final MSG_REQUEST_TRAVERSAL_BY_PWM:I = 0x3c

.field private static final MSG_SET_IN_TOUCH_MODE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    goto :goto_11

    :pswitch_6
    goto :goto_11

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManagerFuncs:Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;->reconfigureDisplay(I)V

    goto :goto_11

    :pswitch_10
    nop

    :goto_11
    return-void

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_10
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
