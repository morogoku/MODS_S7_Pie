.class Lcom/android/server/policy/SamsungPhoneWindowManager$13;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSVoiceIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableSVoice:Z

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableDoubleTapLaunch:Z

    :cond_28
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    :cond_40
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_FIFTH_TAP_POWER_LAUNCH_ONE_TOUCH_REPORT:Z

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFifthTapLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableOneTouchReport:Z

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableOneTouchReport:Z

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/16 v2, 0x69

    iput v2, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFifthPressOnPowerBehavior:I

    goto :goto_68

    :cond_5f
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFifthPressOnPowerBehavior:I

    :cond_68
    :goto_68
    return-void
.end method
