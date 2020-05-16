.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$sygi_9JvknLKFjOBI4bOIkz6fIA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/stackdivider/DividerCloseController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerCloseController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$sygi_9JvknLKFjOBI4bOIkz6fIA;->f$0:Lcom/android/systemui/stackdivider/DividerCloseController;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$sygi_9JvknLKFjOBI4bOIkz6fIA;->f$0:Lcom/android/systemui/stackdivider/DividerCloseController;

    invoke-static {v0, p1}, Lcom/android/systemui/stackdivider/DividerCloseController;->lambda$makeView$1(Lcom/android/systemui/stackdivider/DividerCloseController;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
