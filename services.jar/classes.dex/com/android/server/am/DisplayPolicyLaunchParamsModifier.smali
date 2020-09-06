.class Lcom/android/server/am/DisplayPolicyLaunchParamsModifier;
.super Ljava/lang/Object;
.source "DisplayPolicyLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;


# instance fields
.field mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/DisplayPolicyLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method private displayIdFromPrimaryMetaDataLocked(Ljava/lang/String;)I
    .registers 3

    if-eqz p1, :cond_12

    invoke-static {p1}, Lcom/android/server/am/MultiDisplayManagerService;->isPrimaryDefaultDisplay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    invoke-static {p1}, Lcom/android/server/am/MultiDisplayManagerService;->isPrimaryDesktopDisplay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x2

    return v0

    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method private isHomeIntent(Landroid/content/Intent;)Z
    .registers 4

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_2c

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    return v1
.end method

.method private isHomeOrRecentsActivity(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .registers 6

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v0, :cond_21

    iget v0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v0, v1, :cond_1e

    goto :goto_21

    :cond_1e
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    goto :goto_29

    :cond_21
    :goto_21
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_29
    nop

    const-string v2, "com.android.systemui.recents"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-direct {p0, p2}, Lcom/android/server/am/DisplayPolicyLaunchParamsModifier;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v1, 0x0

    nop

    :cond_3b
    :goto_3b
    return v1
.end method


# virtual methods
.method public onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
    .registers 9

    const/4 v0, 0x2

    return v0
.end method
