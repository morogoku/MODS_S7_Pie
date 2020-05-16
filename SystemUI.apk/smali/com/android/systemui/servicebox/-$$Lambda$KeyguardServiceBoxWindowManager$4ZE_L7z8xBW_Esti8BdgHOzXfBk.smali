.class public final synthetic Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxWindowManager$4ZE_L7z8xBW_Esti8BdgHOzXfBk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxWindowManager$4ZE_L7z8xBW_Esti8BdgHOzXfBk;->f$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    iput-object p2, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxWindowManager$4ZE_L7z8xBW_Esti8BdgHOzXfBk;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxWindowManager$4ZE_L7z8xBW_Esti8BdgHOzXfBk;->f$2:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxWindowManager$4ZE_L7z8xBW_Esti8BdgHOzXfBk;->f$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    iget-object v1, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxWindowManager$4ZE_L7z8xBW_Esti8BdgHOzXfBk;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxWindowManager$4ZE_L7z8xBW_Esti8BdgHOzXfBk;->f$2:Landroid/view/WindowManager$LayoutParams;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->lambda$showFloatingView$0(Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Ljava/lang/Void;)V

    return-void
.end method
