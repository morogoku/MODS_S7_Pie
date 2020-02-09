.class public Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;
.super Ljava/lang/Object;
.source "NetworkAnalyticsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$BroadcastActions;,
        Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$DataPoints;,
        Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$IntentActions;,
        Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$ErrorValues;,
        Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$ActivationState;,
        Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$DBConstants;,
        Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$JSONConstants;
    }
.end annotation


# static fields
.field public static final ALL_REGISTERED_PROFILES:Ljava/lang/String; = "ALL_REGISTERED_PROFILES_FOR_CLIENT"

.field public static final DEFAULT_BIND_USER_ID:I = -0x3e7

.field public static final DEFAULT_FLOW_TYPE:I = -0x3e7

.field public static final DEFAULT_INTERVAL_VALUE:I = -0x3e7

.field public static final NETWORK_ANALYTICS_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

.field public static final NETWORK_ANALYTICS_PERMISSION_NPA:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NPA"

.field public static final NETWORK_ANALYTICS_SERVICE:Ljava/lang/String; = "knoxnap"

.field public static final VENDOR_BIND_ACTION:Ljava/lang/String; = "_namonitoraction"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
