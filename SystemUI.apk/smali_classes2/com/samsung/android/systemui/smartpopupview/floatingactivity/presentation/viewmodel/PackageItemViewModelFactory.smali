.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModelFactory;
.super Ljava/lang/Object;
.source "PackageItemViewModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPackageItemViewModel(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;

    invoke-direct {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->getPackageIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;->setPackageIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->getPackageState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;->setPackageState(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->getPackageLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;->setPackageLabel(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createFromPackageData(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;

    invoke-direct {p0, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModelFactory;->getPackageItemViewModel(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
