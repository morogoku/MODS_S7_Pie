.class public final synthetic Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/-$$Lambda$PackageListActivityViewModel$m1xOlJlXZgMAQWl37lWDEzDKRmg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

.field private final synthetic f$1:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/-$$Lambda$PackageListActivityViewModel$m1xOlJlXZgMAQWl37lWDEzDKRmg;->f$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    iput-object p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/-$$Lambda$PackageListActivityViewModel$m1xOlJlXZgMAQWl37lWDEzDKRmg;->f$1:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/-$$Lambda$PackageListActivityViewModel$m1xOlJlXZgMAQWl37lWDEzDKRmg;->f$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/-$$Lambda$PackageListActivityViewModel$m1xOlJlXZgMAQWl37lWDEzDKRmg;->f$1:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->lambda$togglePackageState$1(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;)V

    return-void
.end method
