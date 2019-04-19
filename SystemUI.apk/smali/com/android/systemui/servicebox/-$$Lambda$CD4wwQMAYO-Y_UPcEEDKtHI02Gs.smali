.class public final synthetic Lcom/android/systemui/servicebox/-$$Lambda$CD4wwQMAYO-Y_UPcEEDKtHI02Gs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/-$$Lambda$CD4wwQMAYO-Y_UPcEEDKtHI02Gs;->f$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/-$$Lambda$CD4wwQMAYO-Y_UPcEEDKtHI02Gs;->f$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->onPeekTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
