.class public interface abstract Lcom/samsung/android/globalactionsdlx/util/SecGlobalActionsAnalytics;
.super Ljava/lang/Object;
.source "SecGlobalActionsAnalytics.java"


# static fields
.field public static final DID_BIKE_MODE:Ljava/lang/String; = "Bike mode"

.field public static final DID_EMERGENCY_MODE:Ljava/lang/String; = "Emergency mode"

.field public static final DID_LOCK_DOWN:Ljava/lang/String; = "Lock down"

.field public static final DID_MOBILE_DATA:Ljava/lang/String; = "Mobile data"

.field public static final DID_POWER_OFF:Ljava/lang/String; = "Power off"

.field public static final DID_PRO_KIOSK:Ljava/lang/String; = "Pro kiosk"

.field public static final DID_RESTART:Ljava/lang/String; = "Restart"

.field public static final EID_DEVICE_OPTIONS:Ljava/lang/String; = "6111"

.field public static final EID_SAFE_MODE:Ljava/lang/String; = "6121"

.field public static final SID_DEVICE_OPTIONS:Ljava/lang/String; = "611"

.field public static final SID_SAFE_MODE:Ljava/lang/String; = "612"

.field public static final VID_BIKE_MODE:I = 0x6

.field public static final VID_EMERGENCY_MODE:I = 0x3

.field public static final VID_LOCK_DOWN:I = 0x4

.field public static final VID_MOBILE_DATA:I = 0x5

.field public static final VID_POWER_OFF:I = 0x1

.field public static final VID_PRO_KIOSK:I = 0x7

.field public static final VID_RESTART:I = 0x2


# virtual methods
.method public abstract sendEventLog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method
