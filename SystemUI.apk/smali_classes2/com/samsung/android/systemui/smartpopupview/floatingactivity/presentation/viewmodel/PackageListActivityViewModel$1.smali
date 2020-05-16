.class Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel$1;
.super Ljava/lang/Object;
.source "PackageListActivityViewModel.java"

# interfaces
.implements Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/GetListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->generateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListLoaded(Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->access$000(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/systemui/smartpopupview/Rune;->ENABLE_APP_SUGGESTION:Z

    if-eqz v0, :cond_1

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->access$102(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    const-string v1, "Suggest app not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->access$102(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    invoke-static {v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->access$000(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getEnabledList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->access$200(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->access$300(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;Ljava/util/List;)V

    :cond_2
    return-void
.end method
