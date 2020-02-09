.class Lcom/android/systemui/qs/customize/QSCustomizer$2;
.super Ljava/lang/Object;
.source "QSCustomizer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->showImmediately()V

    return-void
.end method
