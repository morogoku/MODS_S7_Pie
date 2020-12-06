.class public final synthetic Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageListAdapter$1_TlZyAIF53eIVOm279eTIXVXXI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

.field private final synthetic f$1:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;

.field private final synthetic f$2:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageListAdapter$1_TlZyAIF53eIVOm279eTIXVXXI;->f$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

    iput-object p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageListAdapter$1_TlZyAIF53eIVOm279eTIXVXXI;->f$1:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;

    iput-object p3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageListAdapter$1_TlZyAIF53eIVOm279eTIXVXXI;->f$2:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageListAdapter$1_TlZyAIF53eIVOm279eTIXVXXI;->f$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageListAdapter$1_TlZyAIF53eIVOm279eTIXVXXI;->f$1:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageListAdapter$1_TlZyAIF53eIVOm279eTIXVXXI;->f$2:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;->lambda$onBindViewHolder$0(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;Landroid/view/View;)V

    return-void
.end method
