.class public final synthetic Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageCardAdapter$XD8AvKECrbN9OjRVOfaZdSv_OvI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;

.field private final synthetic f$1:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;

.field private final synthetic f$2:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$PackageItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$PackageItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageCardAdapter$XD8AvKECrbN9OjRVOfaZdSv_OvI;->f$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;

    iput-object p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageCardAdapter$XD8AvKECrbN9OjRVOfaZdSv_OvI;->f$1:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;

    iput-object p3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageCardAdapter$XD8AvKECrbN9OjRVOfaZdSv_OvI;->f$2:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$PackageItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageCardAdapter$XD8AvKECrbN9OjRVOfaZdSv_OvI;->f$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageCardAdapter$XD8AvKECrbN9OjRVOfaZdSv_OvI;->f$1:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageCardAdapter$XD8AvKECrbN9OjRVOfaZdSv_OvI;->f$2:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$PackageItemViewHolder;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;->lambda$onBindViewHolder$0(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$PackageItemViewHolder;Landroid/view/View;)V

    return-void
.end method
