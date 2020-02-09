.class public Lcom/android/systemui/sidescreen/applist/model/AppInfo;
.super Lcom/android/systemui/sidescreen/applist/model/ItemInfo;
.source "AppInfo.java"


# instance fields
.field public key:Ljava/lang/String;

.field public mResolveInfo:Landroid/content/pm/ResolveInfo;

.field public title:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->semGetUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->userId:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->userId:I

    :goto_0
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->userId:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->makeKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->key:Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$startActivity$0(Lcom/android/systemui/sidescreen/applist/model/AppInfo;Landroid/content/Context;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.google.android.youtube"

    iget-object v2, p0, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->getActivityOptions(Landroid/content/Context;)Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    :cond_1
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget v2, p0, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->getBadgedActivityIcon(Landroid/content/pm/ResolveInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public startActivity(Landroid/content/Context;I)V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$AppInfo$8jsqG80OOu_LbYvEUJliDTYpYCY;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$AppInfo$8jsqG80OOu_LbYvEUJliDTYpYCY;-><init>(Lcom/android/systemui/sidescreen/applist/model/AppInfo;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startApp(Landroid/content/Context;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->startActivity(Landroid/content/Context;I)V

    return-void
.end method
