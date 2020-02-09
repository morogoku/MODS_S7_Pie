.class public final synthetic Lcom/android/systemui/sidescreen/applist/view/-$$Lambda$ItemListView$S9KcHZikoYomV5bLEP_bbu0ny8E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/sidescreen/applist/view/-$$Lambda$ItemListView$S9KcHZikoYomV5bLEP_bbu0ny8E;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/sidescreen/applist/view/-$$Lambda$ItemListView$S9KcHZikoYomV5bLEP_bbu0ny8E;->f$0:I

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, p1}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->lambda$exceptOtherWindowingModeVisibleTasks$0(ILandroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    return p1
.end method
