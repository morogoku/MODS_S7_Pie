.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$xrvUJez9_0iSt6ZCun4UUtbSsHk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$xrvUJez9_0iSt6ZCun4UUtbSsHk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$xrvUJez9_0iSt6ZCun4UUtbSsHk;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$xrvUJez9_0iSt6ZCun4UUtbSsHk;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$xrvUJez9_0iSt6ZCun4UUtbSsHk;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$xrvUJez9_0iSt6ZCun4UUtbSsHk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$notifyClientsOfServicesStateChange$5(Landroid/view/accessibility/IAccessibilityManagerClient;)V

    return-void
.end method
