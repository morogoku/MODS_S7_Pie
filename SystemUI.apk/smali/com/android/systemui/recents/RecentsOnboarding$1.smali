.class Lcom/android/systemui/recents/RecentsOnboarding$1;
.super Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;
.source "RecentsOnboarding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsOnboarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/recents/RecentsOnboarding;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;-><init>()V

    return-void
.end method

.method private onAppLaunch()V
    .locals 9

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$000(Lcom/android/systemui/recents/RecentsOnboarding;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    return-void

    :cond_1
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->mLastPackageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v2

    if-ne v2, v3, :cond_7

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v4}, Lcom/android/systemui/recents/RecentsOnboarding;->access$100(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    return-void

    :cond_3
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v6}, Lcom/android/systemui/recents/RecentsOnboarding;->access$200(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v6}, Lcom/android/systemui/recents/RecentsOnboarding;->access$300(Lcom/android/systemui/recents/RecentsOnboarding;)Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;->isGestureHintEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    const v7, 0x7f12043c

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v6, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$400(Lcom/android/systemui/recents/RecentsOnboarding;I)V

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v6}, Lcom/android/systemui/recents/RecentsOnboarding;->access$500(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v7, v6}, Lcom/android/systemui/recents/RecentsOnboarding;->access$600(Lcom/android/systemui/recents/RecentsOnboarding;I)V

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v8, 0x3

    if-lt v6, v8, :cond_4

    move v8, v3

    goto :goto_0

    :cond_4
    move v8, v1

    :goto_0
    invoke-static {v7, v8}, Lcom/android/systemui/recents/RecentsOnboarding;->access$700(Lcom/android/systemui/recents/RecentsOnboarding;Z)V

    :cond_5
    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v6, v1, v3}, Lcom/android/systemui/recents/RecentsOnboarding;->access$800(Lcom/android/systemui/recents/RecentsOnboarding;II)V

    :cond_6
    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding$1;->onAppLaunch()V

    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding$1;->onAppLaunch()V

    return-void
.end method
