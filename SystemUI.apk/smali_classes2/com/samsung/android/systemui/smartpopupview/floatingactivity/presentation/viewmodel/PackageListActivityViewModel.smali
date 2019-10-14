.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;
.super Ljava/lang/Object;
.source "PackageListActivityViewModel.java"

# interfaces
.implements Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemsProvider;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mIsProgressOn:Z

.field private mLastSuggestPackageName:Ljava/lang/String;

.field private mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

.field private mPackageItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageItemViewModelFactory:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModelFactory;

.field private mPackageUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;

.field public final mSuggestAppNotExist:Ljava/lang/String;

.field private mView:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PackageListActivityViewModel"

    sput-object v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModelFactory;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mPackageItemList:Ljava/util/List;

    const-string v0, "Suggest app not exist"

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mSuggestAppNotExist:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mPackageItemViewModelFactory:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModelFactory;

    iput-object p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mPackageUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    invoke-direct {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mView:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mLastSuggestPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->updateEnabledState(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->makePackageListToShow(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$makePackageListToShow$0(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mView:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mView:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->updateListVIew()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->setProgressOn(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$togglePackageState$1(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;->setPackageState(Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mView:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->removePackageFromEnabledList(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$togglePackageState$2(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;->setPackageState(Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mView:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->addPackageToEnabledList(Ljava/lang/String;)V

    return-void
.end method

.method private makePackageListToShow(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->TAG:Ljava/lang/String;

    const-string v2, "makePackageListToShow"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mPackageItemViewModelFactory:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModelFactory;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mPackageItemViewModelFactory:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModelFactory;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModelFactory;->createFromPackageData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mPackageItemList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mView:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/-$$Lambda$PackageListActivityViewModel$pC4FVMVJHwBrfsYnvgKbAnoUfzM;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/-$$Lambda$PackageListActivityViewModel$pC4FVMVJHwBrfsYnvgKbAnoUfzM;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setProgressOn(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProgressOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mIsProgressOn:Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mView:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    iget-boolean v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mIsProgressOn:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->setProgressOn(Z)V

    return-void
.end method

.method private updateEnabledState(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->TAG:Ljava/lang/String;

    const-string v2, "updateEnabledState"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;

    invoke-virtual {v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v4, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is enabled, update state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->setPackageState(Z)V

    goto :goto_2

    :cond_2
    goto :goto_1

    :cond_3
    :goto_2
    goto :goto_0

    :cond_4
    return-object p1
.end method


# virtual methods
.method public enableEdgeLighting()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mView:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->enableEdgeLighting()V

    return-void
.end method

.method public generateList()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->TAG:Ljava/lang/String;

    const-string v2, "generateList"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mPackageUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel$1;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;->getPackageList(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/GetListListener;)V

    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mPackageItemList:Ljava/util/List;

    return-object v0
.end method

.method public getLastSuggestPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mLastSuggestPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityDestroyed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mPackageItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mPackageUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mPackageItemViewModelFactory:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModelFactory;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mView:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->updateListVIewWhenDestroy()V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mView:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    return-void
.end method

.method public setView(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->mView:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->setProgressOn(Z)V

    return-void
.end method

.method public togglePackageState(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->TAG:Ljava/lang/String;

    const-string v1, "togglePackageState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;->getPackageState()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/-$$Lambda$PackageListActivityViewModel$m1xOlJlXZgMAQWl37lWDEzDKRmg;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/-$$Lambda$PackageListActivityViewModel$m1xOlJlXZgMAQWl37lWDEzDKRmg;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/-$$Lambda$PackageListActivityViewModel$aGSPdJE0HqHRS0LhI7cFxj3dCYE;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/-$$Lambda$PackageListActivityViewModel$aGSPdJE0HqHRS0LhI7cFxj3dCYE;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method
