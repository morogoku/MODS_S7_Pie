.class Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;
.super Ljava/lang/Object;
.source "ViewTreeObserverUtil.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil;->createAndAddViewTreeObserver(Landroid/view/View;Landroid/graphics/Region;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil;

.field final synthetic val$contentInsets:Ljava/lang/reflect/Field;

.field final synthetic val$setTouchableInsets:Ljava/lang/reflect/Method;

.field final synthetic val$tRegion:Landroid/graphics/Region;

.field final synthetic val$touchableInsetRegion:Ljava/lang/reflect/Field;

.field final synthetic val$touchableRegion:Ljava/lang/reflect/Field;

.field final synthetic val$visibleInsets:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Landroid/graphics/Region;Ljava/lang/reflect/Method;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil;

    iput-object p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;->val$contentInsets:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;->val$visibleInsets:Ljava/lang/reflect/Field;

    iput-object p4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;->val$touchableRegion:Ljava/lang/reflect/Field;

    iput-object p5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;->val$touchableInsetRegion:Ljava/lang/reflect/Field;

    iput-object p6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;->val$tRegion:Landroid/graphics/Region;

    iput-object p7, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;->val$setTouchableInsets:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;->val$contentInsets:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;->val$visibleInsets:Ljava/lang/reflect/Field;

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;->val$touchableRegion:Ljava/lang/reflect/Field;

    aget-object v4, p3, v1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;->val$touchableInsetRegion:Ljava/lang/reflect/Field;

    aget-object v5, p3, v1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;->val$tRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;->val$setTouchableInsets:Ljava/lang/reflect/Method;

    aget-object v6, p3, v1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    return-object v1
.end method
