.class public final synthetic Lcom/android/systemui/statusbar/car/-$$Lambda$CarNavigationButton$JmPpKNHLRTKzKT3BOWLrrGz-iXU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/car/CarNavigationButton;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/car/CarNavigationButton;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/-$$Lambda$CarNavigationButton$JmPpKNHLRTKzKT3BOWLrrGz-iXU;->f$0:Lcom/android/systemui/statusbar/car/CarNavigationButton;

    iput-object p2, p0, Lcom/android/systemui/statusbar/car/-$$Lambda$CarNavigationButton$JmPpKNHLRTKzKT3BOWLrrGz-iXU;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/-$$Lambda$CarNavigationButton$JmPpKNHLRTKzKT3BOWLrrGz-iXU;->f$0:Lcom/android/systemui/statusbar/car/CarNavigationButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/-$$Lambda$CarNavigationButton$JmPpKNHLRTKzKT3BOWLrrGz-iXU;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->lambda$onFinishInflate$1(Lcom/android/systemui/statusbar/car/CarNavigationButton;Landroid/content/Intent;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
