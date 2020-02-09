.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# instance fields
.field private mBlackList:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;

.field private mContext:Landroid/content/Context;

.field private mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSuggesestAppCount:I

.field private mSuggestedAppList:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    invoke-direct {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;

    invoke-direct {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mBlackList:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/BlackList;

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;

    invoke-direct {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mSuggestedAppList:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;

    return-void
.end method

.method private checkToSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z
    .locals 6

    move-object v0, p1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.content.pm.ActivityInfo"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "resizeMode"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->isResizeableMode(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->isForceResizableFromMetadata(ILandroid/content/pm/ActivityInfo;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    return v1
.end method

.method private getLauncherPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method private hideIcon(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.systemui.metadata.mwapplist.HIDE_ICON"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method private static isForceResizableFromMetadata(ILandroid/content/pm/ActivityInfo;)Z
    .locals 4

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-ge v1, v3, :cond_2

    if-eqz p0, :cond_2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.sec.android.support.multiwindow"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    nop

    :cond_1
    return v2

    :cond_2
    return v2
.end method

.method private static isResizeableMode(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private isSuggestPackage(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mSuggestedAppList:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedAppList;->getSuggestedList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v2, "PackageUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is suggested."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$getPackageList$0(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;)I
    .locals 3

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->getPackageLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->getPackageLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getPackageList$1(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;)I
    .locals 3

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->getPackageLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->getPackageLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getPackageList$2(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/GetListListener;)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->getLauncherPackages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mSuggesestAppCount:I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->checkToSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->hideIcon(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v5, "PackageUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " support multi window."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;

    invoke-direct {v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;-><init>()V

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->setPackageName(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->setPackageIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->setPackageLabel(Ljava/lang/String;)V

    sget-boolean v5, Lcom/samsung/android/systemui/smartpopupview/Rune;->ENABLE_APP_SUGGESTION:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->isSuggestPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mSuggesestAppCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mSuggesestAppCount:I

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v5, "PackageUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not support multi window."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    goto/16 :goto_0

    :cond_2
    sget-boolean v1, Lcom/samsung/android/systemui/smartpopupview/Rune;->ENABLE_APP_SUGGESTION:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$PackageUtil$wG5LLvTR6MIiRc60RA9-gin5nY0;->INSTANCE:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$PackageUtil$wG5LLvTR6MIiRc60RA9-gin5nY0;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    sget-object v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$PackageUtil$pKpwChhIqyOAHUDCSoCaJDbHWzM;->INSTANCE:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$PackageUtil$pKpwChhIqyOAHUDCSoCaJDbHWzM;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mSuggesestAppCount:I

    invoke-interface {p4, p3, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/GetListListener;->onListLoaded(Ljava/util/ArrayList;I)V

    return-void
.end method


# virtual methods
.method public getPackageList(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/GetListListener;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v1, "PackageUtil"

    const-string v2, "getPackageList"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$PackageUtil$2kLS59z-l7__J4gKR-XIer36VGs;

    move-object v3, v1

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$PackageUtil$2kLS59z-l7__J4gKR-XIer36VGs;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/GetListListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
