.class Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;
.super Ljava/lang/Object;
.source "SecNavigationBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SecNavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->access$100(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->access$200(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Lcom/android/systemui/statusbar/phone/NavBarPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarPresenter;->sendImeSwitcherLog()V

    return-void
.end method
